

# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../steps/Cart/Cart_TC001_Steps.robot
Resource          ../../steps/Cart/Cart_TC002_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
	Click Accept Cookies Button
	Sleep    5
    Accept Cookies and Close Welcome Modal
	Sleep    5
	Click Cart Icon & Open Cart
    Sleep    5
    Add Upsell Item to Cart
    Validate Upsell Item Added
    Add 3 of Item to Activate Custom Set Discount
    Remove All Items From Cart
    Validate Empty Cart Elements & Content
    Close Cart
