@echo off

CALL %~dp0/env.bat

python %~dp0\Lib\site-packages\grid_backup\job_tables.py -e prod -l D:\_GRID_BACKUP

cmd /k