# Script Name: DoNotSellInfo_TC10_Test
# Description: Verify if minors are able to modify the settings from Do Not Sell or Limit the Use links in footer  in Mobile/Desktop view
# Author: Sneha Banad
# Created on: 30/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC10.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../steps/DoNotSellOrShareMyInfo/DoNotSellInfo_TC10_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${Fname}         Test
${Lname}         User
${EmailAdd}
${Pwd}           Test@kc1234
${Mnt}           12
${Yr}            86
${Word}         kotex_Load_Test
${domain}       kcc.com

*** Test Cases ***
Open Ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Sleep    5
    # Registration as minor
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    10
	Click on Do Not Sell Info Link from footer section
	# Unselecting both the checkboxes from do not sell info from footer section
	Select both checkboxes of do not sell or share my personal information
	Sleep    10
	# Open the do not sell info page again to validate checkboxes are not selected
	Click on Do Not Sell Info Link from footer section
	Validate both checkboxes are unchecked in do not sell info section
