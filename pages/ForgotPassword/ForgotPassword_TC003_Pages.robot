*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/ForgotPassword/ForgotPassword_TC001_Pages.robot

*** Variables ***
${title}    css: .thank-you .title
${SuccessDescription}   css: .thank-you .desc

*** Keywords ***
Enter the email adderss
	[Arguments]    ${EmailAddress}
	Wait Until Element Is Visible   ${Email}
	Element Should Be Visible       ${Email}
	Input Text    ${Email}      ${EmailAddress}

Validate send email CTA is enabled and click on it
	Wait Until Element Is Visible    ${SendEmailCTA}
	Element Should Be Visible        ${SendEmailCTA}
	Click Element    ${SendEmailCTA}

Validate the success message after entering email and click on send email
	Wait Until Element Is Visible    ${title}
	Element Should Be Visible        ${title}
    ${titleMsg}=    Get Text    ${title}
    Log    The success message of title is displayed as: ${titleMsg}

	Wait Until Element Is Visible    ${SuccessDescription}
	Element Should Be Visible        ${SuccessDescription}
	${SuccessDescriptionMsg}=    Get Text    ${SuccessDescription}
    Log    The success message of description is displayed as: ${SuccessDescriptionMsg}