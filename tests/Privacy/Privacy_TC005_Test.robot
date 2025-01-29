# Script Name: Privacy_TC005_Test
# Description: Verify if marketing cookies are turned off when user select the "Donot sell or share my personal information"
# Author: Sneha Banad
# Created on: 23/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Privacy\Privacy_TC005.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC001_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC003_Pages.robot
Resource          ../../pages/Privacy/Privacy_TC005_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}         Test
${Lname}         User
${EmailAdd}
${Pwd}           Test@kc1234
${Mnt}           12
${Yr}            79
${Word}         kotex_Load_Test
${domain}       kcc.com

*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    5
	Registration Page Opened
    Sleep    10
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    10
	Verify success message of account creation
	#Selecting My profile from dropdown after logging in
	Click on dropdown and my profile
	Sleep    5
	Expand Privacy Section
	Sleep   5
	Select Do not sell toggle switch button on privacy section
	Sleep   5
	Click on update profile of privacy
    Sleep    5
    Validate profile has been updated
    Sleep    5
    Click on Do Not Sell Info Link from footer section
    Validate both checkbox should be selected in do not sell info section
    Click On Cookie Settings
    Validate Marketing Cookie Should Be Turned Off