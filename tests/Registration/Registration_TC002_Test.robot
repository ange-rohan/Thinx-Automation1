# Script Name: Registration_TC002_Test
# Description: Verify the field level validation on Registration page
# Author: Sneha Banad
# Created on: 22/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC002.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Registration/Registration_TC002_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${AlphaChar}               Test123
${MaxChar}      abcdefghijklmnopqrstuvwxyz
${SpcialChar}       @#$$%
${AlpaNumEmail}     Test123$%%@gmail.com
${InvalidEmail}     test#$%@gmail.com
${InvalidPwd}              Welcome@1
${Fname}            Test
${Lname}            Tweet
${EmailAdd}
${Pwd}              Welcome@12345


*** Test Cases ***
Registration of Ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	FirstName Validation        ${AlphaChar}    ${MaxChar}      ${SpcialChar}
	LastName Validation         ${AlphaChar}    ${MaxChar}      ${SpcialChar}
	Email Validation            ${InvalidEmail}
    Password Validation         ${InvalidPwd}
    DOB Validation              ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}
    Sleep    10
    Checkbox Validation