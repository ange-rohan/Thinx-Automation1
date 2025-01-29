*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Variables ***
${CurrentPwdErr}    css: #consumer_currentpassword-error
${PwdErr}           css: #consumer_password-error
${ConfPwdErr}       css: #consumer_confirmpassword-error

*** Keywords ***
Leave all the password fields empty
	Wait Until Element Is Visible   ${CurrentPwd}
	Element Should Be Visible       ${CurrentPwd}
	Set Focus To Element    ${CurrentPwd}
	Set Focus To Element    ${Password}
	Set Focus To Element    ${ConfirmPwd}
	Set Focus To Element    ${CurrentPwd}

Validate update profile CTA is disabled without entering any passwords and validate error message
	Wait Until Element Is Visible     ${UpdateProfileMyAcc}
	Element Should Be Disabled        ${UpdateProfileMyAcc}

	Wait Until Element Is Visible   ${CurrentPwdErr}
	Element Should Be Visible       ${CurrentPwdErr}
	${CurrentPwdErrMsg}=   Get Text    ${CurrentPwdErr}
	Log    The empty field of current password is: ${CurrentPwdErrMsg}
	${PwdErrMsg}=   Get Text    ${CurrentPwdErr}
	Log    The empty field of current password is: ${PwdErr}
	${ConfPwdErrMsg}=   Get Text    ${ConfPwdErr}
	Log    The empty field of current password is: ${ConfPwdErrMsg}
