# Script Name: LogOut_TC001_Test
# Description: Verify if user is able to logout from the website and User should be redirected back to homepage after logout.
# Author: Sneha Banad
# Created on: 27/10/2023
# Modified by:
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
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_WemAuto1@kcc.com
${pwd}      Welcome@123

*** Test Cases ***
Login to ubykotex
	#Clicking on signin link
	Login Page Opened
	Click Accept Cookies Button
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Sleep    10
	Click On Dropdown And Sign Out
	Sleep    10
	# Validate after log out landed on home page
	Validate landed on home page after logged out



