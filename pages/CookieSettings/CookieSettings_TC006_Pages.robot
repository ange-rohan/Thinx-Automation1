*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Variables ***
${RejectCookies}    css: #onetrust-consent-sdk #onetrust-reject-all-handler
${CookieSettings}   css: #onetrust-consent-sdk .cookie-setting-link

*** Keywords ***
Validate cookie options
	Wait Until Element Is Visible    ${AcceptCookies}
	Element Should Be Visible    ${AcceptCookies}

	Wait Until Element Is Visible    ${RejectCookies}
	Element Should Be Visible    ${RejectCookies}

	Wait Until Element Is Visible    ${CookieSettings}
	Element Should Be Visible    ${CookieSettings}
	Sleep    5

Click on cookie settings option from cookie banner
	Wait Until Element Is Visible    ${CookieSettings}
	Element Should Be Visible    ${CookieSettings}
	Click Element    ${CookieSettings}
	Sleep    5

Validate different cookie options in dialog box
	Validate title and description in cookie settings
	Validate all the Consent Preferences

