*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC13_Test.robot

*** Keywords ***
Open ubykotex
    Click Accept Cookies Button
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	Click on product reviews section from PDP page
	Click on review this product
	Enter all valid fields in my review page    ${Review}     ${Title}   ${ReviewerName}    ${Email}
	Click on submit review CTA
	Enter product rating fields
	Click on submit review CTA
	Validate success message of submit review