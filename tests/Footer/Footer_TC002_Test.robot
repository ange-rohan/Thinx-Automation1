# Script Name: Footer_TC002_Test
# Description: Navigation - Global Main Footer - Validation of link lists present in footer section
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC002_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC002_Steps.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
    Click Accept Cookies Button
	Sleep   5
	Accept Cookies and Close Welcome Modal
	Scroll to the Footer Section
    Validate Footer Headings Are Visible  
    Click 1st Set of Footer Links & Ensure They Direct to Correct Pages
    Validate Currency Selector Is Visible
    Validate Social Link Icons Section Present on Footer Section