# Script Name: CookieSettings_TC004_Test
# Description: Cookie Details link Page-User should see list of cookie details with expand and collapse option
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC004_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC004_Steps.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${user}     thinx.automation1@yopmail.com


*** Test Cases ***
Open Thinx
    Reject All Cookies
    Accept Cookies and Close Welcome Modal
    Review Homepage Elements to Ensure Cookie Error Messaging is Visible
    Review Footer & Email Signup Functionality
    Enter Test Email in Newsletter Signup
    Click Store Locator Link In Footer
    Click Quiz Link In Meganav
    Click Reviews Link In Footer
    Click Product Link Meganav
    Validate PDP Does Not Contain Reviews