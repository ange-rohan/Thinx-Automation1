*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CookieSettings}        (//*[contains(text(),'Cookies Settings')])[2]
${BrandLogo}        xpath: //img[@alt='Company Logo']
${OneTrustLogo}     xpath: //img[@alt='Powered by Onetrust']
${Title}            xpath: //h2[@id='ot-pc-title']
${Description}      xpath: //*[@id='ot-pc-desc']
${MoreInfoLink}     xpath: //a[@class='privacy-notice-link']
${CloseIcon}        xpath: //button[@class='ot-close-icon']
${SaveCTA}          css: #onetrust-consent-sdk .ot-pc-footer .save-preference-btn-handler
${ConsentPref}       css: #ot-pc-content .ot-cat-grp

*** Keywords ***
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

	Wait Until Element Is Visible    ${CloseIcon}
	Element Should Be Visible        ${CloseIcon}
	Sleep    2

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