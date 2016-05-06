@echo off
set ROOTDIR=%~dp0
set PYDIR=C:\Python27\ArcGIS10.3\
set ENVDIR=C:\Python27\venv\

@echo Setting the Python Environment Variables
SET "PATH=%PYDIR%;%PYDIR%DLLs;%PYDIR%Scripts;%PATH%"

@echo Installing SetupTools, PIP, and Virtualenv
python %ROOTDIR%setupTools\ez_setup.py
python %ROOTDIR%setupTools\pip-8.0.2\setup.py install
pip install virtualenv

@echo Creating Python Virtual Environment
if not exist %ENVDIR%NUL mkdir %ENVDIR%
virtualenv %ENVDIR%grid_env --system-site-packages
call %ENVDIR%grid_env\Scripts\activate.bat

@echo Running the GRID package installation
pip install grid_etl-1.6.1_Rainbow.Trout-py27-none-any.whl -r requirements.txt

::pip install grid_buddy-0.1.1-py27-none-any.whl
::xcopy /s "%ROOTDIR%spatialite\*.dll" "%ENVDIR%grid_env\Scripts\"

@echo Finished installing GRID package
cmd /k