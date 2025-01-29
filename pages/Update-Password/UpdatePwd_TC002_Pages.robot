*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${AlreadyUsedPwdErr}    css: .error-msg-text-wrap


*** Keywords ***
Validate error message for already used password
	Wait Until Element Is Visible    ${AlreadyUsedPwdErr}
	Element Should Be Visible        ${AlreadyUsedPwdErr}
	${AlreadyUsedPwdErrMsg}=   Get Text    ${AlreadyUsedPwdErr}
	Log    The error message for already used password is: ${AlreadyUsedPwdErrMsg}