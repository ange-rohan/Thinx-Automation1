
# Description: Increase & decrease quantity of items in cart once added
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
Resource          ../../steps/Cart/Cart_TC003_Steps.robot
Resource          ../../steps/Cart/Cart_TC004_Steps.robot
Resource          ../../steps/PDP/PDP_TC002_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP
	Click Accept Cookies Button
	Sleep         5
    Accept Cookies and Close Welcome Modal
    Sleep         2
    Validate You Can Type In Quantity Selector to Add to Cart
    Validate Cart Custom Set Discount Messaging on Add
    Decrease Quantity In Cart
    Validate Custom Set Discount Messaging Updates
    Decrease Quantity In Cart
    Validate Custom Set Discount Messaging Updates to 20% off
    Decrease Quantity In Cart
    Validate Custom Set Discount Messaging Updates to 15% off
