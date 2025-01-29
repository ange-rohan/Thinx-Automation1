# Script Name: DoNotSellInfo_TC008_Test
# Description: Verify user is on Do not sell page and user clicks on cancel CTA
# Author: Sneha Banad
# Created on: 21/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC008.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC008_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    5
	# Clicking on sign in page
	Login Page Opened
	Click on Do Not Sell Info Link from footer section
	# clicking on cancel CTA
	Click on cancel and return on do not sell info section
	# Validating landed back to same page after clicking cancel CTA
	Validate landed back to signin page after clicking on cancel from do not sell info section



