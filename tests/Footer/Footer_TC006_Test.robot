# Script Name: Footer_TC006_Test
# Description: Navigation Footer - Verify if Limit the Use of My Sensitive Personal Information  link is clickable and present in footer
# Author: Sneha Banad
# Created on: 12/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC006_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC006_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Scroll to the Footer Section
	# Click on Terms and Conditions link from footer section
	Click on Limit the Use of My Sensitive Personal Information link from Footer Section
	# Validate it is navigated to Limit the Use of My Sensitive Personal Information page
	Validate Navigation to Limit the Use of My Sensitive Personal Information Page