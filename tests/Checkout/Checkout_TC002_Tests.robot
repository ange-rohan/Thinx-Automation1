
# Description: Remove items from cart
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC001_Test.robot
# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/CookieSettings/CookieSettings_TC001_Steps.robot
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../steps/Cart/Cart_TC001_Steps.robot
Resource          ../../steps/PDP/PDP_TC002_Steps.robot
Resource          ../../steps/Checkout/Checkout_TC001_Steps.robot
Resource          ../../steps/Checkout/Checkout_TC002_Steps.robot
Test Setup        Open Thinx PDP Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${Fname}            Test
${Lname}            Tweet
${CheckoutEmail}    testpurchase1@yopmail.com
${StreetAddress}    277 Gedney Hill Road
${City}             Coeymans Hollow
${ZipCode}          12046
${Phone}            6317930513

*** Test Cases ***
Open Thinx PDP
    Click Accept Cookies Button
	Sleep         5
    Accept Cookies and Close Welcome Modal
	Validate Add to Cart From PDP
    Sleep    5
    Navigate From Cart to Checkout
    Enter New Account Email on Checkout     ${CheckoutEmail}
    Enter First Name on Checkout    FName=${FName}
	Enter Last Name on Checkout    ${LName}
	Enter Street Address on Checkout     ${StreetAddress}
    Capture Page Screenshot 
	Validate Shipping Method
    Validate Payment Information
    Validate Terms & Pay Now Section
  







