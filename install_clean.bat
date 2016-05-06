@echo off
set ROOTDIR=%~dp0
set PYDIR=C:\Python27\ArcGIS10.3\

@echo Setting the Python Environment Variables
SET "PATH=%PYDIR%;%PYDIR%DLLs;%PYDIR%Scripts;%PATH%"

@echo Installing SetupTools and PIP
cd %ROOTDIR%setupTools
python ez_setup.py
cd %ROOTDIR%setupTools\pip-8.0.2
python setup.py install

@echo Running the GRID package installation
pip install grid_etl-1.6.1_Rainbow.Trout-py27-none-any.whl -r requirements.txt
::pip install grid_buddy-0.1.1-py27-none-any.whl

@echo Finished installing GRID package
cmd /k