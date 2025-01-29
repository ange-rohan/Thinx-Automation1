# Script Name: Registration_TC006_Test
# Description: Verify if user is  not able to create account leaving mandatory fields empty
# Author: Sneha Banad
# Created on: 27/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC006.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Registration/Registration_TC006_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
    Sleep    20
    Select Policy Checkbox And Click Create Account
    Sleep    10
    Validate all mandatory blank field errors