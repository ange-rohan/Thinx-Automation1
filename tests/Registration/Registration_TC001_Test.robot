# Script Name: Registration_TC001_Test
# Description: Verify whether user is able to see the Registration form when clicked on Register button in UbyKotex Site
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC001.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC001_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Registration of Thinx
	Registration Page Opened
	Sleep    5
	Validate all the fields