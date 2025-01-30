# Script Name: LogOut_TC001_Test
# Description: Verify if user is able to logout from the website and User should be redirected back to homepage after logout.
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Log_Out\Log_Out_TC001_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot
Resource          ../../pages/Log_Out/LogOut_TC001_Pages.robot
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
	Validate clicked Logout CTA to Logout
	Validate landed on home page after logged out



