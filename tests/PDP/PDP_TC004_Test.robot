# Script Name: PDP_TC004_Test
# Description: PDP - Validate list of pack count details and Retailer options
# Author: Sneha Banad
# Created on: 21/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\PDP\PDP_TC004_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP Using Chrome Browser
    Click Accept Cookies Button
	Sleep   5
	Accept Cookies and Close Welcome Modal
    Validate You Can Select Different Color Swatch
    Validate You Can Add Different Colors to Cart
