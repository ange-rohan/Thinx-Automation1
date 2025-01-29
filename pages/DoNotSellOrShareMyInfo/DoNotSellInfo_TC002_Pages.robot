*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Variables ***
${DoNotSellCheckbox}    //*[@id="consumer_DoNotSellMyInfoFlag"]
${LimitTheUseCheckbox}      //input[@id='consumer_LimittheUseofMyPersonalInfoFlag']
${MarketingCookieButton}        //*[@id="ot-group-id-C0012"]


*** Keywords ***
Select both checkboxes of do not sell or share my personal information
	Execute Javascript    window.scrollTo(0,600)
	Sleep    5
	Wait Until Page Contains Element      ${DoNotSellCheckbox}
	Element Should Be Visible       ${DoNotSellCheckbox}
	Click Button        ${DoNotSellCheckbox}
    Sleep    5

	Wait Until Page Contains Element        ${LimitTheUseCheckbox}
	Element Should Be Visible       ${LimitTheUseCheckbox}
	Click Button         ${LimitTheUseCheckbox}
    Sleep    10
    Capture Page Screenshot
	Click Button        ${SubmitCTA}
    Sleep    5

Enter the username which is created by registration flow
	Wait Until Page Contains Element    ${Username}
	Element Should Be Visible       ${Username}
	Input Text      ${Username}     ${EmailID}
	Sleep    2

Validate Marketing cookie should be turned off
	Scroll Element Into View    ${PerformanceCookies}
	Scroll Element Into View    ${TargetingCookies}
	Scroll Element Into View    ${MarketingCookies}
    Sleep    10
    Element Attribute Value Should Be       ${MarketingCookieButton}        aria-checked        false
	Capture Page Screenshot

