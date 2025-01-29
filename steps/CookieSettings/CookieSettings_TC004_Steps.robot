*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC004_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Click on Cookie Settings
	Validate detail link of Functional cookies
	Validate detail link of Targeting cookies
	Validate detail link of Marketing cookies