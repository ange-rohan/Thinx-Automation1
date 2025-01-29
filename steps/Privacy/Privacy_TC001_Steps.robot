*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Privacy/Privacy_TC001_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on dropdown and my profile
	Expand Privacy Section
	Validate all the Privacy fields are present