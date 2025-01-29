*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC008_Test.robot

*** Keywords ***
Open ubykotex
	Click Reject Cookies Button
	Click on Cookie Settings
	Validate Marketing cookie should be turned Off