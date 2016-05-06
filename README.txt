To manually install setupTools and pip, use the modules included in the setupTools folder
    python ez-setup.py
    cd to pip-8.0.2 folder
    python setup.py install

If a virtual environment needed, please run
    pip install virtualenv

If running etl and buddy from a virtual environment, use
    virtualenv grid_env --system-site-packages
        -will allow arcpy modules to be used

To manually install files, pleaase use the following commands:
    pip install grid_etl-1.6.1_Rainbow.Trout-py27-none-any.whl -r requirements.txt
    pip install grid_buddy-0.1.1-py2-none-any.whl

    The requirements file will install all dependencies that are archived locally on
    the pyDepend folder.  In the future, we can archive these on the t:\ drive and have
    the requirements file point to those locations.  The requirements command will only
    run once, because all dependencies are included.

    In order to run the job_tables_backup.py procedure, Spatialite must be incorporated into Python.
        To do this, please navigate to your Python folder (C:\Python27\ArcGIS10.3 or c:\Python27\venv\grid_env)
            navigate to the Scripts folder, and copy the spatialite .dll files into the Scripts folder.

*** I have created batch files to automate this process.  They are completed, but will need
    to be tested thoroughly for the various installations.
        the batch file install_venv.bat has been tested and works well if you already have pip and virtualenv installed.
        grid_buddy will not be installed by default from the batch files.  In order to install it, please uncomment the two lines
            ::pip install grid_buddy-0.1.1-py27-none-any.whl
            ::xcopy /s "%ROOTDIR%spatialite\*.dll" "%ENVDIR%grid_env\Scripts\"