*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Variables ***
${MarketingCookieButton}        //div[@class='ot-desc-cntr']//input[@class='category-switch-handler']
${AcceptCookies}                //button[@id='onetrust-accept-btn-handler']
${CookieSettingsButton}        //button[@class='body-3-bold no-underline text-default']
${MarketingCookiesLink}        //div[@class='category-menu-switch-handler ot-active-menu']

*** Keywords ***
Accept Cookies 
    Wait Until Element Is Visible    ${AcceptCookies}
	Click Element    locator=${AcceptCookies}
	Sleep    5

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


Validate Marketing cookie should be turned off
    Execute Javascript    window.scrollTo(0,4500)
    Sleep    5
	Wait Until Element Is Not Visible    ${CookieSettingsButton}  
	Click Element            ${CookieSettingsButton}
    Sleep    5
	Wait Until Element Is Not Visible    ${MarketingCookiesLink}
	Click Element          ${MarketingCookiesLink}
    Sleep    10
    Element Attribute Value Should Be       ${MarketingCookieButton}        aria-checked        false
	Capture Page Screenshot

