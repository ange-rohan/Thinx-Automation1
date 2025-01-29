# Script Name: Footer_TC007_Test
# Description: Navigation Footer - Verify if California Privacy Rights link is clickable and present in footer
# Author: Sneha Banad
# Created on: 15/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC007_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC007_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Scroll to the Footer Section
	# Click on California Privacy Rights link from footer section
	Click on California Privacy Rights link
	# Validate it is navigated to California Privacy Rights page
	Validate navigation to California Privacy Rights page
