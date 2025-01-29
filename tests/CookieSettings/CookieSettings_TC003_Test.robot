# Script Name: CookieSettings_TC003_Test
# Description:
# Author: Sneha Banad
# Created on:
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC003_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC003_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Turn Off Performance cookie
	Turn Off Functional cookie
	Turn Off Targeting cookie
	Turn Off Marketing cookie
	Click on Save Settings CTA on cookie settings dialog box
	#To validate weather the tpggle buttons are set to OFF
	Click on Cookie Settings
	Validate all the toggle buttons are OFF

