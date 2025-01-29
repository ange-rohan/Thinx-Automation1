# Script Name: Update-Password_TC007_Test
# Description: Verify if user is able to login using new password . Go to sign in page after logging out
# Author: Sneha Banad
# Created on: 18/10/2023
# Modified by:
# MOdified on:
# Comments: Need to check & update new password for each run
# Run Command: robot. \QA-Automation\tests\Update-Password\UpdatePwd_TC007.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_wem111@kcc.com
${pwd}      Welcome@45
${CnfrmPwd}     Welcome@143

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
	# entering new password
	Enter Password details      ${pwd}       ${CnfrmPwd}
	Click on update profile of My account
	# Validat success message of profile updation
	Validate profile has been updated
	Click on dropdown and sign out
	Sleep    5
	# Login with new password
	Login Page Opened
	Enter Username      ${user}
	Enter Password      ${CnfrmPwd}
	Click On SignIn Button
	Sleep    10
	# Successfully logged in with new password
	Validate successfully landed on profile page



