# Script Name: CookieSettings_TC003_Test
# Description:
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC003_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC003_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
	Click Accept Cookies Button
	Sleep    10
	Accept Cookies and Close Welcome Modal
	Click on Cookie Settings
	Turn Off Performance cookie
	Turn Off Functional cookie
	Click on Save Settings CTA on cookie settings dialog box
	#To validate weather the tpggle buttons are set to OFF
	Click on Cookie Settings
	Validate all the toggle buttons are OFF


