# Script Name: ForgotPassword_TC001_Test
# Description: Verify if User should be able to see all the data on initial load of the page
# Author: Sneha Banad
# Created on: 24/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\ForgotPassword\ForgotPassword_TC001.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/ForgotPassword/ForgotPassword_TC001_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Sleep    10
	Click on forgot password link
	Sleep    10
	Validate all the mandatory data on forgot password page
