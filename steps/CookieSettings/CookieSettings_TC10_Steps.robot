*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC10_Test.robot

*** Keywords ***
Open ubykotex
    Click Accept Cookies Button
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	Click on product reviews section from PDP page
	Validation of reviews and ratings of product