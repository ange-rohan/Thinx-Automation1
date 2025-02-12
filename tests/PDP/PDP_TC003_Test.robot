# Script Name: PDP_TC003_Test
# Description: Validate that you can increase the quantity on the PDP using the quantity selector
# Comments:
# Run Command: robot. \QA-Automation\tests\PDP\PDP_TC003_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC003_Steps.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP
    Click Accept Cookies Button
	Sleep         5
    Accept Cookies and Close Welcome Modal
	Validate You Can Increase Quantity on PDP 
    Validate Cart Count on Add to Cart
