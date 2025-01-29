# Script Name: Login_TC004_Test
# Description: Verify if user is able to sign in by giving correct credentials
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Login\Login_TC004.robot

# Importing the Libraries

*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC003_Pages.robot
Resource          ../../steps/Login/Login_TC003_Steps.robot

Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser
*** Variables ***
${user}     thinx.automation1@yopmail.com
${pwd}      Test@kc1234

*** Test Cases ***
Login to Thinx
	Login Page Opened
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn CTA
	Validate successfully landed on profile page
	Capture Page Screenshot