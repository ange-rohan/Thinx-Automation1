*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC009_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Click on Cookie Settings
    Turn Off Marketing cookie
    Validate all the sub cookies under marketing cookie are set to off
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	Validate smart commerce error message
	Click on product reviews section from PDP page
	Validate review this product should be disabled from product review section
    Login Page Opened
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
    Click on dropdown and my profile
	Expand More About Me Section
	Validate survey gizmo error message in more about me section

