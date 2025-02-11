*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot


*** Variables ***
${MarketingCookieButton}        //div[@class='ot-desc-cntr']//input[@class='category-switch-handler']
${AcceptCookies}                //button[@id='onetrust-accept-btn-handler']
${CookieSettingsButton}        //button[@class='body-3-bold no-underline text-default']
${MarketingCookiesLink}        //div[@class='category-menu-switch-handler ot-active-menu']
${ReturnURL}                   https://www.thinx.com/


*** Keywords ***

Click the Cancel & Return CTA
    Wait Until Element Is Visible     ${CancelCTA}
    Element Should Be Visible    ${CancelCTA}
    Click Element    ${CancelCTA}

Validate You're Routed Back to the Homepage
    Sleep    5
    Wait Until Location Is    ${ReturnURL}    10s
    Location Should Be      ${ReturnURL}

Validate That All Cookies Are On
    Sleep    5
    ${checked_value}=  Get Element Attribute  id=ot-group-id-C0012  checked
    Should Not Be Empty  ${checked_value}


