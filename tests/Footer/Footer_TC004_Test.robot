# Script Name: Footer_TC004_Test
# Description: Navigation - Footer - Privacy Policy and Terms of Use
# Author: Sneha Banad
# Created on: 12/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC004_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC004_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Scroll to the Footer Section
	# Click on Terms and Conditions link fro footer section
	Click on Terms and Conditions Link from Footer Section
	# Validate it is navigated to terms and conditions page
	Validate Navigation to Terms and Conditions Page
	Click on Privacy Policy Link from Footer Section
	Validate Navigation to Privacy Policy Page


