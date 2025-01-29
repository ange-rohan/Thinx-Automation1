# Script Name: PDP_TC002_Test
# Description: Product Info - User should see the details of the product page
# Author: Sneha Banad
# Created on: 19/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\PDP\PDP_TC002_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/PDP/PDP_TC001_Steps.robot
Resource          ../../steps/PDP/PDP_TC002_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Resource          ../../steps/PLP/PLP_TC008_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP Using Chrome Browser
    Click Accept Cookies Button
	Sleep         5
	Validate Add to Cart From PDP
    Validate Cart Count on Add to Cart

