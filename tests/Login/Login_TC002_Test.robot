# Script Name: Login_TC002_Test
# Description: Verify if forgot password link is clickable
# Comments:
# Run Command: robot. \QA-Automation\tests\Login\Login_TC003.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../steps/Login/Login_TC003_Steps.robot
Resource          ../../steps/Login/Login_TC002_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Login to Thinx
	Login Page Opened
	Sleep    5
	Click on forgot password link
	Validate successfully landed on forgot password page


