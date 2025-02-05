*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/ForgotPassword/ForgotPassword_TC001_Pages.robot

*** Variables ***
${title}    //h1[@id='login']
${SuccessDescription}   //h2[@class='body-2 text-center mb-4']
${EmailAddress}     abcd@gmail.com

*** Keywords ***
Enter the email address
	[Arguments]    ${EmailAddress}
	Wait Until Element Is Enabled     ${RecoverPasswordField}          5
    Input Text                         ${RecoverPasswordField}               ${EmailAddress}
	

Validate send email CTA is enabled and click on it
	Wait Until Element Is Visible    ${SendEmailCTA}
	Element Should Be Visible        ${SendEmailCTA}
	Click Element    ${SendEmailCTA}

Validate the success message after entering email and click on send email
	Wait Until Element Is Visible    ${title}
	Element Should Be Visible        ${SuccessDescription}
    ${title}=    Get Text        ${title}
    Should Contain    ${title}  Login

	Wait Until Element Is Visible    ${SuccessDescription}
	Element Should Be Visible        ${SuccessDescription}
    ${SuccessDescription}=    Get Text        ${SuccessDescription}
    Should Contain    ${SuccessDescription}  We've sent you an email with a link to update your password.
      