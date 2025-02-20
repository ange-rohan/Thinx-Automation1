# Script Name: Modal_TC003_Test
# Description: Validation of error messaging when you reject cookies and then attempt to submit the welcome modal

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Modal/Modal_TC001_Steps.robot
Resource          ../../steps/Modal/Modal_TC002_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC004_Steps.robot
Resource          ../../steps/Modal/Modal_TC003_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Reject All Cookies
    Sleep    5
    Validate Welcome Modal Displays
    Trigger Cookies Error Message on Modal
    Review Cookies Error Messaging Content on Modal