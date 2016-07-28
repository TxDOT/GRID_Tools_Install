To manually install setupTools and pip, use the modules included in the setupTools folder
    python ez-setup.py
    cd to pip-8.0.2 folder
    python setup.py install

If a virtual environment needed, please run
    pip install virtualenv

If running etl and buddy from a virtual environment, use
    virtualenv grid_env --system-site-packages
        -will allow arcpy modules to be used within virtualenv

To manually install files, please use the following commands:
    pip install grid_etl-1.6.2-py27-none-any.whl -r requirements.txt
    pip install grid_backup-0.1.2-py27-none-any.whl -r requirements.txt

    The requirements file will install all dependencies that are archived locally in the pyDepend folder. 

    In order to run the job_tables.py module, Spatialite must be incorporated into Python.
        To do this, please navigate to your Python folder (C:\Python27\ArcGIS10.3 or c:\Python27\venv\grid_env)
            navigate to the Scripts folder, and copy the spatialite .dll files into the Scripts folder.
            
    There are included batch files to automate the process of running ETL and backup tools from the CLI
        From the batchFiles folder, please enter teh ArcGIS or venv sub-folders depending on your installation
        Copy the batch files to the root of your python installation (C:\Python27\ArcGIS10.3\ or c:\Python27\venv\grid_env\)


There are installation batch files to enable easy installation of the ETL and Backup programs.
    All installation batch files have been thoroughly tested, and will install on non-admin system correctly
    The installation batch files basically automate the process outlined above
  **Which installation batch files to use?**
        -if you have a clean install of ArcGIS, and wish to run them normally
            -install_clean.bat
        -if you already have setuptools and pip installed
            -install.bat
        -if you have a clean install of ArcGIS, and wish to run in virtual python environment
            -install_clean_venv.bat
        -if you already have setuptools, pip, and virtualenv installed, and wish to run in virtual environment
            -install_venv.bat
    -grid_backup will be not be installed by default
        -to install grid_backup, uncomment the line:
            -::pip install grid_backup-0.1.2-py27-none-any.whl -r requirements.txt
            -(uncomment by removing :: )

To generate wheel files from the etl and backup repositories:
    -pip install wheel
    -navigate to the grid_etl or grid_backup directory
    -python setup.py bdist_wheel