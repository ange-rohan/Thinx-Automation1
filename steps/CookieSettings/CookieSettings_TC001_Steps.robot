*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC001_Test.robot

*** Keywords ***
Open ubykotex
    Click Accept Cookies Button
	Click on Cookie Settings
	Validate brand logo and close icon
	Validate title and description in cookie settings
	Validate the Consent Preferences
	Validate save settings button