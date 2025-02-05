*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***

${SendEmailCTA}     //button[.='Submit']
${CancelLink}        //a[.='Cancel']
${ResetPasswordh1}    //h1[@class='heading-3']
${ExpectedText}       Reset your password
${ResetPasswordPar}    //p[@class='body-2']
${ExpectedTextPar}      We will send you an email to reset your password
${RecoverPasswordField}    //input[@id='RecoverEmail']

*** Keywords ***
Click on forgot password link
	Wait Until Element Is Visible    ${ForgotPwdLink}
	Element Should Be Visible        ${ForgotPwdLink}
	Click Element    ${ForgotPwdLink}

Validate all the mandatory data on forgot password page
	Wait Until Element Is Visible    ${ResetPasswordh1}
	Element Should Be Visible         ${ResetPasswordh1}
    ${ResetPasswordh1}=    Get Text    ${ResetPasswordh1}
    Should Contain    ${ResetPasswordh1}  Reset your password


	Wait Until Element Is Visible    ${ResetPasswordPar}
	Element Should Be Visible        ${ResetPasswordPar}
	${ResetPasswordPar}=    Get Text   ${ResetPasswordPar}
    Should Contain   ${ResetPasswordPar}  We will send you an email to reset your password

	Wait Until Element Is Visible    ${RecoverPasswordField}
	Element Should Be Visible        ${RecoverPasswordField}

    Wait Until Element Is Visible     ${CancelLink}
    Element Should Be Visible         ${CancelLink}

    Wait Until Element Is Visible     ${SendEmailCTA}
    Element Should Be Visible         ${SendEmailCTA}

