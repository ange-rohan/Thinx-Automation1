# Script Name: ForgotPassword_TC003_Test
# Description: Verify if Reset your password CTA is enabled on providing correct details
# Comments:
# Run Command: robot. \QA-Automation\tests\ForgotPassword\ForgotPassword_TC003.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/ForgotPassword/ForgotPassword_TC002_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${EmailAddress}     abcd@gmail.com

*** Test Cases ***
Login to Thinx
	Login Page Opened
	Sleep    10
	Click on forgot password link
	Execute JavaScript  window.scrollTo(0, 0)
	Sleep    10
	Enter the email address     ${EmailAddress}
	Sleep    10
	Validate send email CTA is enabled and click on it
	Sleep    10
	Validate the success message after entering email and click on send email

