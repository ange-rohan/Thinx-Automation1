# Script Name: PLP_TC001_Test
# Description: Product Filter - validate you can open & close the filter menu on the collection page & correct filter options display
# Run Command: robot. \QA-Automation\tests\PLP\PLP_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PLP/PLP_TC001_Steps.robot
Test Setup        Open Thinx Collections Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Collections Page Using Chrome Browser
    Click Accept Cookies Button
	Sleep   10
    Close Email Modal
	Validate Filter Menu Opens On Click
    Validate Filter Menu Contains All Correct Filter Menu Options
    Validate Filter Menu Displays Apply Filters Button
    Validate Filter Menu Closes On Click 

