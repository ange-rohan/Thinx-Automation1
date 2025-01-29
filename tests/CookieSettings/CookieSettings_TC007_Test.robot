# Script Name: CookieSettings_TC007_Test
# Description: If a consumer opts in by accepting cookies while browsing a website or mobile application anonymously
# Author: Sneha Banad
# Created on: 14/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC007_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate Marketing cookie should be turned On
