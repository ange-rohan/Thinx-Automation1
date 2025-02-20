# Script Name: Modal_TC001_Test
# Description: User should be able to see the welcome modal, it's correct content & descriptions

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Modal/Modal_TC001_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC001_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Click Accept Cookies Button
    Sleep    5
    Validate Welcome Modal Displays
    Validate Modal Display
    Validate Modal Content
    Validate Modal Close Methods
  