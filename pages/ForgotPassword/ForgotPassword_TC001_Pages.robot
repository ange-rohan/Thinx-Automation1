*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***
${Description}  css: .mainWrapper .page-banner-content .page-banner-description
${SendEmailCTA}     css: #consumer-forgotpassword-button

*** Keywords ***
Click on forgot password link
	Wait Until Element Is Visible    ${ForgotPwdLink}
	Element Should Be Visible        ${ForgotPwdLink}
	Click Element    ${ForgotPwdLink}

Validate all the mandatory data on forgot password page
	Wait Until Element Is Visible    ${SignInBanner}
	Element Should Be Visible        ${SignInBanner}

	Wait Until Element Is Visible    ${Description}
	Element Should Be Visible        ${Description}

	Wait Until Element Is Visible    ${Email}
	Element Should Be Visible        ${Email}

    Wait Until Element Is Visible     ${PrivacyLinks}
    Element Should Be Visible         ${PrivacyLinks}

    Wait Until Element Is Visible     ${SendEmailCTA}
    Element Should Be Visible         ${SendEmailCTA}

