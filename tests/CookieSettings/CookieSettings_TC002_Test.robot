# Script Name: CookieSettings_TC002_Test
# Description: Validate the Consent Preferences,when user cliks on cookie settings User should see the cookie preference center dialog opened
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC002_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
	Click Accept Cookies Button
	Sleep    5
	Accept Cookies and Close Welcome Modal
	Sleep    5
	Click on Cookie Settings
	Validate all the Consent Preferences
	Validate save settings button
	Validate + icon and expand and view all the descriptions