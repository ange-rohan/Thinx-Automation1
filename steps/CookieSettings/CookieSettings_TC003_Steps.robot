*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Variables ***
${PerformanceCookieToggleBtn}       //div[@class='ot-desc-cntr']//div[@class='ot-tgl']
${FunctionalCookieToggleBtn}       //div[@class='ot-desc-cntr']//div[@class='ot-tgl']
${TargetingCookieToggleBtn}        //div[@class='ot-desc-cntr']//div[@class='ot-tgl']
${MarketingCookieToggleBtn}        //div[@class='ot-desc-cntr']/div[@class='ot-grp-hdr1']/div[@class='ot-tgl']
${SaveSettingsCTA}          css: .ot-pc-footer .save-preference-btn-handler
${AllowAllCTA}      css: #onetrust-consent-sdk #accept-recommended-btn-handler

*** Keywords ***
Turn Off Performance cookie
    Click Element    ${PerformanceCookies}
	Scroll Element Into View    ${PerformanceCookies}
	Scroll Element Into View    ${TargetingCookies}
	Scroll Element Into View    ${MarketingCookies}
    Sleep    5
    Wait Until Page Contains Element        ${PerformanceCookieToggleBtn}
	Wait Until Element Is Visible       ${PerformanceCookieToggleBtn}
	Element Should Be Visible       ${PerformanceCookieToggleBtn}
	Set Selenium Implicit Wait    5 seconds
	Execute Javascript   document.querySelector("input[id='ot-group-id-C0002']").click()
    Sleep    5

Turn Off Functional cookie
    Wait Until Element Is Visible    ${FunctionalCookies}
	Click Element    locator=${FunctionalCookies}
	Wait Until Page Contains Element        ${FunctionalCookieToggleBtn}
	Wait Until Element Is Visible       ${FunctionalCookieToggleBtn}
	Element Should Be Visible       ${FunctionalCookieToggleBtn}
	Set Selenium Implicit Wait    5 seconds
	Execute Javascript   document.querySelector("input[id='ot-group-id-C0003']").click()


Click on Save Settings CTA on cookie settings dialog box
	Wait Until Element Is Visible       ${SaveSettingsCTA}
	Element Should Be Enabled       ${SaveSettingsCTA}
	Click Element       ${SaveSettingsCTA}
	Sleep    10

Validate all the toggle buttons are OFF
	Wait Until Element Is Visible       ${AllowAllCTA}
	Element Should Be Visible       ${AllowAllCTA}
	Set Selenium Implicit Wait    5
	Scroll Element Into View    ${PerformanceCookies}
	Scroll Element Into View    ${TargetingCookies}
	Scroll Element Into View    ${MarketingCookies}
	Capture Page Screenshot
