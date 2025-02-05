# Script Name: DoNotSellInfo_TC003_Test
# Description: Verify user does not click on Do not Sell or Share My Personal Information and Limit the Use of My Sensitive Personal Information checkbox while registration and then user logs in into siteVerify user does not click on Do not Sell or Share My Personal Information and Limit the Use of My Sensitive Personal Information checkbox while registration and then user logs in into site
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC003.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open Thinx
    Click Accept Cookies Button
	Accept Cookies and Close Welcome Modal
	Click on Do Not Sell Info Link from footer section
    Click the Cancel & Return CTA
    Validate You're Routed Back to the Homepage
	Click on Cookie Settings
	Validate + icon and expand and view all the descriptions
    Validate That All Cookies Are On

