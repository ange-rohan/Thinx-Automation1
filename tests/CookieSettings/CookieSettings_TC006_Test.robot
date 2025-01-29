# Script Name: CookieSettings_TC006_Test
# Description: Cookie Banner-Validation of accept, reject cookies and cookie settings
# Author: Sneha Banad
# Created on: 31/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot.\QA-Automation\tests\CookieSettings\CookieSettings_TC006_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC006_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Validate cookie options
	Click on cookie settings option from cookie banner
	Validate different cookie options in dialog box
