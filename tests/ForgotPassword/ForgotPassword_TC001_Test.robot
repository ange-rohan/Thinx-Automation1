# Script Name: ForgotPassword_TC001_Test
# Description: Verify if User should be able to see all the data on initial load of the page
# Comments:
# Run Command: robot. \QA-Automation\tests\ForgotPassword\ForgotPassword_TC001.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/ForgotPassword/ForgotPassword_TC001_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Login to Thinx
	Login Page Opened
	Sleep    10
	Click on forgot password link
	Execute JavaScript  window.scrollTo(0, 0)
	Sleep    10
	Validate all the mandatory data on forgot password page
