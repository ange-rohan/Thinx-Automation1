# Script Name: Update-Password_TC001_Test
# Description: Verify if user is able to click on edit link present near My Account section and New Password field is updated
# Author: Sneha Banad
# Created on: 17/10/2023
# Modified by:
# MOdified on:
# Comments: Need to update new password for each run
# Run Command: robot. \QA-Automation\tests\Update-Password\UpdatePwd_TC001.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_wem111@kcc.com
${pwd}      Welcome@45
${CnfrmPwd}     Welcome@12345

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
	# Updating new password
	Enter Password details      ${pwd}       ${CnfrmPwd}
	Click on update profile of My account
	# Validating new password has been updated
	Validate profile has been updated

