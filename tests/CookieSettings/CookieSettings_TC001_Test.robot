# Script Name: CookieSettings_TC001_Test
# Description: When user click on cookies settings, User should see the cookies preference center dialog opened
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
	Click Accept Cookies Button
	Sleep    5
    Accept Cookies and Close Welcome Modal
	Sleep    5
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	Click on Cookie Settings
	Validate brand logo and close icon
	Validate title and description in cookie settings
	Validate the Consent Preferences
	Validate save settings button



