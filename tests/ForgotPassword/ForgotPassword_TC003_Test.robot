# Script Name: ForgotPassword_TC003_Test
# Description: Verify if Reset your password CTA is enabled on providing correct details
# Author: Sneha Banad
# Created on: 24/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\ForgotPassword\ForgotPassword_TC003.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/ForgotPassword/ForgotPassword_TC003_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${EmailAddress}     abcd@gmail.com

*** Test Cases ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Sleep    10
	Click on forgot password link
	Sleep    10
	Enter the email adderss     ${EmailAddress}
	Sleep    10
	Validate send email CTA is enabled and click on it
	Sleep    10
	Validate the success message after entering email and click on send email

