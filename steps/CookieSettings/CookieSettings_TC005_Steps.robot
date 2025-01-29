*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC005_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Click on Cookie Settings
	Validate cookie details of functional cookies
	Validate cookie details of targeting cookies
	Validate cookie details of marketing cookies