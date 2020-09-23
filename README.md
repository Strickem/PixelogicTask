# PixelogicTask

My framework is called Robot Framework it's based on Python and has many capabilites
one of them it's really easy to generate reports that indicates the success/failure of the implemented scenarios.
also it takes an automatic screenshot on failure and all of that is done by running a simple command line in the Pycharm IDE terminal.

Components:
Robot Framework uses external library "Seleinum" for locating the elements necessary to register the user. 
the project is segmented to 3 directories:

1- Tests > the scenarios I'm using

2- PO > Page Objects as in the necessary url i will be navigating towards

3- Resources > the elements/locators I'm using

Limitations so far:
Implementing an http interceptor as this is something beyond my current technical skill within the Robot Framework 
and i don't have the necessary time to investigate into it currently
however i managed to find out that there is an external library like selenium called HTTP Library and it might assist me with that later on.


How to Install Robot Framework - Python:

1-Download Pycharm IDE and install it.

2-Navigate to Python.org and click downloads then decide which version you want to work with preferably a newer version.

3-Run the python installer as administrator and make sure to add python to path
also make sure they are added to system variables.

4-Open CMD terminal and run the following command
python -m pip install --upgrade pip

5-Type in CMD terminal pip install robotframework
hit enter

6-Type in CMD terminal pip install robotframework-seleniumlibrary
hit enter

7-Navigate to seleniumhq.org and download google chrome as webdriver and make sure to add the directory to the system variables.

8-last thing is to install intellibot plugin from settings inside Pycharm IDE *you might need to download the plugin manually from github if you get an error installing it from the marketplace*


How to run the Framework:

Run the command from Pycharm IDE Terminal
Command: robot --variable Email:pxlogic1@spam4.me -d results tests/phptravelsweb.robot

P.S: please note that I'm passing the variable email in the cmd terminal when i'm runnging the script as i didn't want to hardcode it and wanted to be up to the user running the script
the other values are not needed as i already specified values for them

-why is that?
= because the only field that can't accept the same data twice is the Email field during registeration.
