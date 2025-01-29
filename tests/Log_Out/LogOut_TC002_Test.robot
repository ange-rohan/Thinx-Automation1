# Script Name: LogOut_TC002_Test
# Description: Verify if user is able to access authenticated pages(my account) directly through URL
# Author: Sneha Banad
# Created on: 27/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Log_Out\Log_Out_TC002_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
#Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
#Resource          ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot
Resource          ../../pages/Log_Out/LogOut_TC002_Pages.robot
Test Setup        Open Ubykotex Page my profile URL
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_WemAuto1@kcc.com
${pwd}      Welcome@123

*** Test Cases ***
Login to ubykotex
	Click Accept Cookies Button
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Sleep    10
	# Validate logged in through url landed on profile page
	Validate successfully landed on profile page after logged in through my profile URL



