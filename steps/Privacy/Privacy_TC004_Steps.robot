*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Privacy/Privacy_TC004_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on dropdown and my profile
	Expand Privacy Section
	Click on close CTA of Privacy section
	Validate collapse the section after clicking on close CTA of Privacy