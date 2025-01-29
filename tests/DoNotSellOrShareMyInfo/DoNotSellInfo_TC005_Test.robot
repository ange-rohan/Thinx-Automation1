# Script Name: DoNotSellInfo_TC005_Test
# Description: Verify user checks the both the checboxes Do Not Sell and Limit the use and click on submit after signing or without sigining in into website from on donotsellmypersonalinfo page
# Author: Sneha Banad
# Created on: 21/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC005.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}         Test
${Lname}         User
${EmailAdd}
${Pwd}           Test@kc1234
${Mnt}           12
${Yr}            79
${EmailID}

*** Test Cases ***
Open ubykotex
    Click Accept Cookies Button
    Click on Do Not Sell Info Link from footer section
    # Select both checkboxes
	Select both checkboxes of do not sell or share my personal information
	Sleep    5
	Click on Cookie Settings
	Sleep    5
	# Validation of marketing cookie should be turned off after selecting both checkboxes from do not sell info
	Validate Marketing cookie should be turned off
	Sleep    10
	Registration Page Opened
    Sleep    10
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    10
	Verify success message of account creation
	Sleep    5
	Click on dropdown and my profile
	Click on Do Not Sell Info Link from footer section
	Select both checkboxes of do not sell or share my personal information
	Sleep    5
	Click on Cookie Settings
	Sleep    5
	# Validation of marketing cookie should be turned off after selecting both checkboxes from do not sell info
	Validate Marketing cookie should be turned off