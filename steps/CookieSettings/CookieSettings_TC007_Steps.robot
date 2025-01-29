*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC007_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate Marketing cookie should be turned On