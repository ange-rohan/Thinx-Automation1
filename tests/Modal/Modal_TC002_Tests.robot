# Script Name: Modal_TC002_Test
# Description: User see the correct error messaging on the welcome when they don't submit their email & don't click the checkbox

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Modal/Modal_TC001_Steps.robot
Resource          ../../steps/Modal/Modal_TC002_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC001_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Click Accept Cookies Button
    Sleep    5
    Validate Welcome Modal Displays
    Trigger Modal Email Error Message
    Validate Email Field Error Message
    Validate Checkbox Error Message

    
