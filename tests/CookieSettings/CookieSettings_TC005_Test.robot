# Script Name: CookieSettings_TC005_Test
# Description: Cookie Details link Information-User should see the individual cookie details in expaded view
# Author: Sneha Banad
# Created on: 31/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot.\QA-Automation\tests\CookieSettings\CookieSettings_TC005_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC005_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate cookie details of functional cookies
	Validate cookie details of targeting cookies
	Validate cookie details of marketing cookies




