# Script Name: Registration_TC10_Test
# Description: Verify registration if user is more than 13 years old
# Author: Sneha Banad
# Created on: 28/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC10.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Registration/Registration_TC007_Pages.robot
Resource          ../../pages/Registration/Registration_TC10_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}     Test
${Lname}     Tweet
${Email}     test100@gmail.com
${Pwd}       Welcome@12345
${Mnt}       12
${Yr}        86


*** Test Cases ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Sleep    10
	Enter all the fields           ${Fname}          ${Lname}     ${Email}    ${Pwd}
	Select DOB      ${Mnt}  ${Yr}
	Sleep    10
	Validate error message of more than 13 year old