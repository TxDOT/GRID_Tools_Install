@echo off

CALL %~dp0\env.bat

python %~dp0\Lib\site-packages\grid_etl\etl_basemap.py

::python %~dp0\Lib\site-packages\grid_etl\etl_basemap.py -j 552290 -l all -d

::python %~dp0\Lib\site-packages\grid_etl\etl_basemap.py -j 552290 -l CITY_DTL_POLY UZA_POLY

cmd /k