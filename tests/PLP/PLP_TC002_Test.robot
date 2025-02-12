# Script Name: PLP_TC002_Test
# Description: Product Filter - validate you can filter by absorbency
# Author: Sneha Banad
# Created on: 8/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\PLP\PLP_TC002_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PLP/PLP_TC001_Steps.robot
Resource          ../../steps/PLP/PLP_TC002_Steps.robot
Test Setup        Open Thinx Collections Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Collections Page Using Chrome Browser
    Click Accept Cookies Button
	Sleep   10
    Close Email Modal
    Validate Absorbency Filter Displays Correct Absorbencies On Click
	Validate You Can Apply All Day Absorbency Filter
    Validate PLP Results When All Day Absorbency Is Applied
	Validate Product Display When All Day Absorbency Is Applied