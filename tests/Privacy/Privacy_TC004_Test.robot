# Script Name: Privacy_TC004_Test
# Description: Verify if user is able to click close button
# Author: Sneha Banad
# Created on: 24/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Privacy\Privacy_TC005.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     kotex_wemcore5@kcc.com
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
	#Selecting My profile from dropdown after logging in
	Click on dropdown and my profile
	Sleep    5
	Expand Privacy Section
	Sleep   5
	Click on close CTA of Privacy section
	Sleep    2
	Validate collapse the section after clicking on close CTA of Privacy



