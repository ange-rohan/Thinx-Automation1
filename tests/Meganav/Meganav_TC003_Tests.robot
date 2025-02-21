# Script Name: Meganav_TC003_Test
# Description: Validation of mobile menu options after you click hamburger icon

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Meganav/Meganav_TC003_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC001_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${MOBILE_WIDTH}    375
${MOBILE_HEIGHT}   667

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Click Accept Cookies Button
    Sleep    5
    Accept Cookies and Close Welcome Modal
    Resize to Mobile Breakpoints & Open Mobile Menu
    Validate Mobile Menu Options - High Level Elements
    Validate Mobile Menu Options - Navigation Elements
    Close Mobile Menu
