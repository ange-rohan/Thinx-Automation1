# Script Name: CookieSettings_TC005_Test
# Description: Cookie Details link Information-User should see the individual cookie details in expaded view
# Run Command: robot.\QA-Automation\tests\CookieSettings\CookieSettings_TC005_Test.robot

*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Library            /Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/CustomKeywords.py
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC004_Steps.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC005_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
    Navigate to PDPs & Confirm Reviews Load
    Navigate to Quiz Page & Ensure Quiz Loads
    Navigate to Reviews Page & Ensure Reviews Load
    

