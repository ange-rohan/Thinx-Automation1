# Script Name: Login_TC001_Test
# Description: Verify if User should be able to see all the data on initial load of the page
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Login\Login_TC001.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Login to Thinx
	Login Page Opened
	Sleep    5
	Validate all the mandatory data on login page
