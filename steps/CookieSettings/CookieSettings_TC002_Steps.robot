*** Settings ***
Library    SeleniumLibrary
Resource   ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Keywords ***
Open Thinx
	Click Accept Cookies Button
	Click on Cookie Settings
	Validate all the Consent Preferences
	Validate save settings button
	Validate + icon and expand and view all the descriptions