# Script Name: ForgotPassword_TC002_Test
# Description: Verify if Reset your password CTA is disabled without providing mail id
# Author: Sneha Banad
# Created on: 24/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\ForgotPassword\ForgotPassword_TC002.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/ForgotPassword/ForgotPassword_TC002_Pages.robot
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
	Validate email address is blank
	Sleep    10
	Validate send email CTA is disabled

