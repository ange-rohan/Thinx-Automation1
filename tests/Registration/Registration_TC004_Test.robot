# Script Name: Registration_TC004_Test
# Description: Verify that user should see success page  after successful registration in UbyKotex Site
# Author: Sneha Banad
# Created on: 26/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC004.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser
Library    Dialogs


*** Variables ***
${Fname}         Test
${Lname}         User
${EmailAdd}
${Pwd}           Test@kc1234
${Mnt}           12
${Yr}            79
${Word}         kotex_Wem_Automation
${domain}       kcc.com


*** Test Cases ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
    Sleep    10
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    10
	Verify success message of account creation
