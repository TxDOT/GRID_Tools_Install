@echo off

CALL %~dp0\env.bat

python %~dp0\Lib\site-packages\grid_backup\txdot_roadways.py

cmd /k