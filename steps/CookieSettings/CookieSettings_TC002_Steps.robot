*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC002_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Click on Cookie Settings
	Validate all the Consent Preferences
	Validate save settings button
	Validate Always active text and toggle button in manage content preference section
	Validate + icon and expand and view all the descriptions