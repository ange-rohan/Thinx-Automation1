# Script Name: Registration_TC001_Test
# Description: Verify whether user is able to see the Registration form when clicked on Register button in UbyKotex Site
# Author: Sneha Banad
# Created on: 21/09/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC001.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Registration/Registration_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Sleep    10
	Validate all the fields