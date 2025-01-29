# Script Name: PLP_TC003_Test
# Description: Product Filter - by collection User should see Collection filter as a filter option
# Author: Sneha Banad
# Created on: 8/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\PLP\PLP_TC003_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/PLP/PLP_TC001_Steps.robot
Resource          ../../steps/PLP/PLP_TC003_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Test Setup        Open Thinx Collections Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Collections
    Click Accept Cookies Button
	Sleep   10
	Close Email Modal
	Validate Color Filter Displays Correct Absorbencies On Click
	Validate You Can Apply Multi Color Filter
	Validate PLP Results When Multi Color Is Applied
    Validate Product Display When Multi Color Filter Is Applied
	Validate You Can Quick Add Multi Color to Cart & Color Displays
	
