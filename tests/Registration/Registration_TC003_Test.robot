# Script Name: Registration_TC003_Test
# Description: Verify that user sees error messgae when trying to register using already existing email ID in same brand or other KC Brand
# Author: Sneha Banad
# Created on: 25/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC003.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Registration/Registration_TC003_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}            Test
${Lname}            Tweet
${Email}     testkc@gmail.com
${Pwd}              Welcome@12345
${Mnt}           12
${Yr}            79

*** Test Cases ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
    Sleep    10
	Enter already exists email id        ${Fname}          ${Lname}     ${Email}    ${Pwd}   ${Mnt}  ${Yr}
	Sleep    10
	Select Policy Checkbox And Click Create Account
	Sleep    10
	Validation of already exists email id
