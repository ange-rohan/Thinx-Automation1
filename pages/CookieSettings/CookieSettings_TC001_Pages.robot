*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CookieSettings}      //button[@class='body-3-bold no-underline text-default']
${BrandLogo}        xpath: //img[@alt='Company Logo']
${OneTrustLogo}     xpath: //img[@alt='Powered by Onetrust']
${Title}            xpath: //h2[@id='ot-pc-title']
${Description}      xpath: //*[@id='ot-pc-desc']
${MoreInfoLink}     xpath: //a[@class='privacy-notice-link']
${CloseIcon}        xpath: //button[@class='ot-close-icon']
${SaveCTA}          css: #onetrust-consent-sdk .ot-pc-footer .save-preference-btn-handler
${ConsentPref}       css: #ot-pc-content .ot-cat-grp
${AcceptCookies}    //button[@id='onetrust-accept-btn-handler']
${CloseModal}                   //button[@class='absolute right-3 top-3 [&>svg]:size-6']

*** Keywords ***
Click Accept Cookies Button
    Wait Until Element Is Visible     ${AcceptCookies}
	Click Element    ${AcceptCookies}
	Sleep    3

Accept Cookies and Close Welcome Modal
    Sleep    5
    Wait Until Page Contains Element    ${CloseModal}
    Click Element                        ${CloseModal}

Click on Cookie Settings
    Execute Javascript    window.scrollTo(0,2000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,3000)
    Sleep    5
    Execute Javascript    window.scrollTo(0,4500)
    Sleep    5
	Wait Until Page Contains Element      ${CookieSettings}
	Click Element        ${CookieSettings}

Validate brand logo and close icon
	Wait Until Element Is Visible    ${BrandLogo}
	Element Should Be Visible        ${BrandLogo}

	Wait Until Element Is Visible    ${OneTrustLogo}
	Element Should Be Visible        ${OneTrustLogo}

Validate title and description in cookie settings
	Wait Until Element Is Visible    ${Title}
	Element Should Be Visible        ${Title}

	Wait Until Element Is Visible    ${Description}
	Element Should Be Visible        ${Description}

	Wait Until Element Is Visible    ${MoreInfoLink}
	Element Should Be Visible        ${MoreInfoLink}
	Sleep    2

Validate the Consent Preferences
	Wait Until Element Is Visible   ${ConsentPref}
	Element Should Be Visible       ${ConsentPref}
	Sleep    2

Validate save settings button
	Wait Until Element Is Visible    ${SaveCTA}
	Element Should Be Visible        ${SaveCTA}