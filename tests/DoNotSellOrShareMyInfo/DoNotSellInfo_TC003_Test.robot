# Script Name: DoNotSellInfo_TC003_Test
# Description: Verify user does not click on Do not Sell or Share My Personal Information and Limit the Use of My Sensitive Personal Information checkbox while registration and then user logs in into siteVerify user does not click on Do not Sell or Share My Personal Information and Limit the Use of My Sensitive Personal Information checkbox while registration and then user logs in into site
# Author: Sneha Banad
# Created on: 09/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC003.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource        ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
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
	Sleep    5
	Registration Page Opened
	#Click Accept Cookies Button
    Sleep    10
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    20
	Verify success message of account creation
	Sleep    5
	Click on dropdown and sign out
	Sleep    5
	Login Page Opened
	Sleep    5
	Enter the username which is created by registration flow
	Enter Password      ${pwd}
	Click On SignIn Button
	Sleep    10
	Click on Cookie Settings
	Sleep    5
	Validate Marketing cookie should be turned On
