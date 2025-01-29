*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC003_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Click on Cookie Settings
	Turn Off Performance cookie
	Turn Off Functional cookie
	Turn Off Targeting cookie
	Turn Off Marketing cookie
	Click on Save Settings CTA on cookie settings dialog box