# Script Name: Modal_TC004_Test
# Description: Validation of successful submission of the welcome modal
# Importing the Libraries

*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Modal/Modal_TC001_Steps.robot
Resource          ../../steps/Modal/Modal_TC002_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC004_Steps.robot
Resource          ../../steps/Modal/Modal_TC003_Steps.robot
Resource          ../../steps/Modal/Modal_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${ModalEmail}            Test@test.com


*** Test Cases ***
Open Thinx Homepage Using Chrome Browser
    Click Accept Cookies Button
    Sleep    5
    Enter Email Address on Welcome Modal    ModalEmail=${ModalEmail} 
    Click Continue CTA on Modal
    Confirm Visibility of All Set Modal
    Confirm Visibility of Keep Shopping CTA & Click
    
