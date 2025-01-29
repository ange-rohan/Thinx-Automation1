# Script Name: Update-Password_TC003_Test
# Description: Verify if user is able to click cancel button
# Author: Sneha Banad
# Created on: 18/10/2023
# Modified by:
# MOdified on:
# Comments: Need to update new password for each run
# Run Command: robot. \QA-Automation\tests\Update-Password\UpdatePwd_TC003.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC003_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_wem111@kcc.com
${pwd}      Welcome@143
${CnfrmPwd}     Welcome@123

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
	Click on dropdown and my profile
	Click on my account option
	Enter Password details      ${pwd}        ${CnfrmPwd}
	# After entering password details click cancel button
    Click on cancel button
    Sleep    5
    # Validate entered passwords are not saved due to clicked on cancel button, validating blank fields
    Validate all the passwords are set to blank fields


