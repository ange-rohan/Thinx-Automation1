# Script Name: DoNotSellInfo_TC002_Test
# Description: Verify user clicks on Do not Sell or Share My Personal Information and Limit the Use of My Sensitive Personal Information checkbox while registration and then user logs in into site
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC002.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
    Accept Cookies
	Accept Cookies and Close Welcome Modal
	Sleep    5
	Click on Do Not Sell Info Link from footer section
	Select both checkboxes of do not sell or share my personal information
	Sleep    5
	Click on Cookie Settings
	Sleep    5
	Validate Marketing cookie should be turned off
