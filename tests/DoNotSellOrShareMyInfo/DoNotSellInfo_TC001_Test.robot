# Script Name: DoNotSellInfo_TC001_Test
# Description: Verify if Do Not Sell or Share My Personal Information link is clickable and present in footer
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC001.robot


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
	Validate all the fields on Do not sell footer section
