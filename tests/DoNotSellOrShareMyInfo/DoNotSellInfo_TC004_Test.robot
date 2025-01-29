# Script Name: DoNotSellInfo_TC004_Test
# Description: Verify once user is signed in then Do Not Sell and Limit the Use links are clickable in footer and respective page should be displayed to user
# Author: Sneha Banad
# Created on: 09/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC004.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}         Test
${Lname}         User
${EmailAdd}
${Pwd}           Test@kc1234
${Mnt}           12
${Yr}            79


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
	Sleep    5
	Click on Do Not Sell Info Link from footer section and validate the contents
	Sleep    5
    Click on Limit the Use of My Sensitive Information Link from footer section
    Validate limit the use checkbox is available

