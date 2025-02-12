# Script Name: PDP_TC001_Test
# Description: Product Feature - User should see the list of product feature in the PDP page.  Feature section should be displayed under the Product Info.
# Comments:
# Run Command: robot. \QA-Automation\tests\PDP\PDP_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary     screenshot_root_directory=/Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/results
Resource          ../../resources.robot
Resource          ../../steps/PDP/PDP_TC001_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP Using Chrome Browser
    Check Top of PDP Is Visible
	Sleep   5
    Validate PDP Details Are Visible
	Validate Remaining Layout of PDP