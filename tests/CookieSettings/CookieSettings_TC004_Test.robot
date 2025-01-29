# Script Name: CookieSettings_TC004_Test
# Description: Cookie Details link Page-User should see list of cookie details with expand and collapse option
# Author: Sneha Banad
# Created on: 30/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC004_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate detail link of Functional cookies
	Validate detail link of Targeting cookies
	Validate detail link of Marketing cookies
