# Script Name: Update-Password_TC006_Test
# Description: Verify if user is able to login using old password . Go to sign in page after logging out
# Author: Sneha Banad
# Created on: 18/10/2023
# Modified by:
# MOdified on:
# Comments: Need to update new password for each run
# Run Command: robot. \QA-Automation\tests\Update-Password\UpdatePwd_TC006.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC005_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_wem111@kcc.com
${pwd}      Welcome@12345
${OldPwd}   Welcome@123

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
	#Selecting My profile from dropdown after logging in
	Click on dropdown and sign out
	Sleep    5
	# Logging in again
	Login Page Opened
	Enter Username      ${user}
	#Entering old password and validate the error message
	Enter Invalid Password      ${OldPwd}
	Click On SignIn Button
	Sleep    10
	# Validate error messages for invalid credentials
	Validate invalid credentials error message