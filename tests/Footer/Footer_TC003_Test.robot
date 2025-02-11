# Script Name: Footer_TC004_Test
# Description: Navigation - Footer - Privacy Policy and Terms of Use
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC004_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC003_Steps.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
    Click Accept Cookies Button
	Sleep   5
	Accept Cookies and Close Welcome Modal
	Scroll to the Footer Section
	Validate Terms Link Section Is Visible
	Click on Terms and Conditions Link from Footer Section
	Validate Navigation to Privacy Page
    Validate Navigation to Terms Page
    Validate Navigation to Sitemap
    Validate Navigation to Accessibility Page
    Validate Navigation to Limit the Use of My Sensitive Personal Information Page




