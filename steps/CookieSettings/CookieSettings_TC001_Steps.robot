*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot

*** Keywords ***
Open Thinx
    Click Accept Cookies Button
	Click on Cookie Settings
	Validate brand logo and close icon
	Validate title and description in cookie settings
	Validate the Consent Preferences
	Validate save settings button