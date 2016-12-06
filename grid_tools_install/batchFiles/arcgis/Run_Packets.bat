@echo off

CALL %~dp0\env.bat

python %~dp0\Lib\site-packages\grid_etl\etl_packet.py

::python %~dp0\Lib\site-packages\grid_etl\etl_packet.py -j 323 330 -d -w


cmd /k