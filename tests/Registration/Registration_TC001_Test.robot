# Script Name: Registration_TC001_Test
# Description: Verify whether user is able to see the Registration form when clicked on Register button in UbyKotex Site
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC001.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Registration of Thinx
	Click Accept Cookies Button
	Sleep   5
	Accept Cookies and Close Welcome Modal
	Registration Page Opened
	Sleep    5
	Validate all the fields