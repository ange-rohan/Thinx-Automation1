*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/ForgotPassword/ForgotPassword_TC001_Pages.robot


*** Keywords ***
Validate email address is blank
	Wait Until Element Is Visible    ${Email}
	Element Should Be Visible        ${Email}
	${blankEmail}=  Get Text    ${Email}
	Should Be Empty    ${blankEmail}

Validate send email CTA is disabled
	Wait Until Element Is Visible     ${SendEmailCTA}
	Element Should Be Disabled       ${SendEmailCTA}