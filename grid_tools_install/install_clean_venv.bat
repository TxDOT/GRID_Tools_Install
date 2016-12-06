@echo off
set ROOTDIR=%~dp0
set PYDIR=C:\Python27\ArcGIS10.3\
set ENVDIR=C:\Python27\venv\
set GRIDENV=%ENVDIR%\grid_env\

@echo Setting the Python Environment Variables
SET "PATH=%PYDIR%;%PYDIR%DLLs;%PYDIR%Scripts;%PATH%"

@echo Installing SetupTools, PIP, and Virtualenv
cd %ROOTDIR%setupTools
python ez_setup.py
cd %ROOTDIR%setupTools\pip-8.0.2
python setup.py install
cd %ROOTDIR%
pip install virtualenv

@echo Creating Python Virtual Environment
if not exist %ENVDIR%NUL mkdir %ENVDIR%
virtualenv %GRIDENV% --system-site-packages
call %GRIDENV%Scripts\activate.bat

@echo Running the GRID package installation
pip install grid_etl-1.6.3-py27-none-any.whl -r requirements.txt
::pip install grid_backup-0.1.2-py27-none-any.whl -r requirements.txt
@echo Copying spatialite files
xcopy /s "%ROOTDIR%spatialite\*.dll" "%GRIDENV%Scripts\"
xcopy /s "%ROOTDIR%batchFiles\venv\*.bat" "%GRIDENV%"

@echo Finished installing GRID package
cmd /k