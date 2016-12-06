@echo off
set PYDIR=%~dp0
@echo Setting the Python Environment Variables
SET "PATH=%PYDIR%\;%PYDIR%\DLLs;%PYDIR%\Scripts;%PATH%"