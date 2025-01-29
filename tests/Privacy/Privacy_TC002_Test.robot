# Script Name: Privacy_TC002_Test
# Description: Verify if user is able to use check and uncheck the boxes and update the details
# Author: Sneha Banad
# Created on: 26/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Privacy\Privacy_TC002_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC001_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC002_Pages.robot
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
	Sleep    5
	#Selecting My profile from dropdown after logging in
	Click on dropdown and my profile
	Sleep    5
	Expand Privacy Section
	Sleep    5
	# Selecting do not sell toggle button
	Select Do not sell toggle switch button on privacy section
	Sleep    5
    Click on update profile of privacy
    Sleep    5
    Validate profile has been updated

