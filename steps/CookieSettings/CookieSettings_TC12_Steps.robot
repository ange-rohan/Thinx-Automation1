*** Settings ***
Library     SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC12_Test.robot

*** Keywords ***
Open ubykotex
    Click Accept Cookies Button
	Sleep    10
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	Click on product reviews section from PDP page
	Click on review this product
	Click on submit review CTA
	Validate error messages for unfilled fields on my review page
	Validate errors for Invalid fields on my review page     ${Review}     ${ReviewerName}  ${Email}