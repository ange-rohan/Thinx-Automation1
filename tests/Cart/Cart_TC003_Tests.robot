
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
Resource          ../../steps/PDP/PDP_TC002_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx PDP
	Click Accept Cookies Button
	Sleep         5
    Accept Cookies and Close Welcome Modal
    Sleep         2
	Validate Add to Cart From PDP
    Sleep    5
    Increase Quantity In Cart
    Capture Page Screenshot
    Sleep   2
    Validate Cart Count Once Added
    Decrease Quantity In Cart

    Sleep   2
    Validate Cart Count Once Removed
