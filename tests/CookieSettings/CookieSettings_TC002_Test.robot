# Script Name: CookieSettings_TC002_Test
# Description: Validate the Consent Preferences,when user cliks on cookie settings User should see the cookie preference center dialog opened
# Author: Sneha Banad
# Created on: 30/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC002_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate all the Consent Preferences
	Validate save settings button
	Validate Always active text and toggle button in manage content preference section
	Validate + icon and expand and view all the descriptions