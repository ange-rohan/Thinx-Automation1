# Script Name: CookieSettings_TC005_Test
# Description: Cookie Details link Information-User should see the individual cookie details in expaded view
# Author: Sneha Banad
# Created on: 31/10/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot.\QA-Automation\tests\CookieSettings\CookieSettings_TC005_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC004_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC005_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
    Reject All Cookies
    Accept Cookies and Close Welcome Modal
    Reject Cookies And Check Console Logs




