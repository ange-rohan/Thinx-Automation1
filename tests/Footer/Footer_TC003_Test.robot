# Script Name: Footer_TC003_Test
# Description: Navigation - Global Main Footer - Validation of link lists present in footer section
# Author: Sneha Banad
# Created on: 11/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC003_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC003_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Scroll to the Footer Section
	# Validate SiteMap Link is present
	Validate SiteMap Link is present on Footer Section
	# Validate language dropdown section
	Validate Language Dropdown present on Footer Section
	Click on Language Dropdown
	# Validate all other Languages page
	Click on First Language from dropdown and validate the page
	Click on Second Language from dropdown and validate the page
	Click on Third Language from dropdown and validate the page
	# Validate copyright statement section
	Validate Copyright Statement Link is present on Footer Section
	Click on Copyright Statement Link
	Validate Copyright Statement Page

