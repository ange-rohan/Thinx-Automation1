# Script Name: Footer_TC001_Test
# Description: Navigation - Validate Footer Section
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot

Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
    Click Accept Cookies Button
	Accept Cookies and Close Welcome Modal
	Sleep    5
	Scroll to the Footer Section
	Capture the Global Main Footer Section


