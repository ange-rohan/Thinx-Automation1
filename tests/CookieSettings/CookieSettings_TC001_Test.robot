# Script Name: CookieSettings_TC001_Test
# Description: When user click on cookies settings, User should see the cookies preference center dialog opened
# Author: Sneha Banad
# Created on: 30/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate brand logo and close icon
	Validate title and description in cookie settings
	Validate the Consent Preferences
	Validate save settings button



