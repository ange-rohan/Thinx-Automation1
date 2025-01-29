*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC006_Test.robot

*** Keywords ***
Open ubykotex
	Validate cookie options
	Click on cookie settings option from cookie banner
	Validate different cookie options in dialog box