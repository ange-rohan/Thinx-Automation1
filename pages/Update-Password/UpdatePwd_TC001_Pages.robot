*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Variables ***
${ProfileDropdown}  css: .login-detail .selected
${MyProfile}        xpath: (//a[contains(text(),'Profile')])[1]
${Edit}             css: #myAccount
${CurrentPwd}       css: #consumer_currentpassword
${Password}         css: #consumer_password
${ConfirmPwd}       css: #consumer_confirmpassword
${UpdateProfileMyAcc}    css: .consumer-profile-button#myAccount-section
${ProfileUpdateMsg}     css: .message-title

*** Keywords ***
Click on dropdown and my profile
	Wait Until Element Is Visible    ${ProfileDropdown}
	Element Should Be Visible        ${ProfileDropdown}
	Click Element    ${ProfileDropdown}
	Sleep    5
	Click Element    ${MyProfile}
	Sleep    5

Click on my account option
	Wait Until Element Is Visible    ${Edit}
	Element Should Be Visible        ${Edit}
	Click Element    ${Edit}
	Sleep    5

Enter Password details
	[Arguments]     ${pwd}       ${CnfrmPwd}
	Wait Until Element Is Visible    ${CurrentPwd}
	Element Should Be Visible        ${CurrentPwd}
	Input Text    ${CurrentPwd}      ${pwd}
	Sleep    3
	Wait Until Element Is Visible    ${Password}
	Element Should Be Visible        ${Password}
	Input Text    ${Password}        ${CnfrmPwd}
	Sleep    3
	Wait Until Element Is Visible    ${ConfirmPwd}
	Element Should Be Visible        ${ConfirmPwd}
	Input Text    ${ConfirmPwd}      ${CnfrmPwd}

Click on update profile of My account
	Wait Until Element Is Visible    ${UpdateProfileMyAcc}
	Element Should Be Visible        ${UpdateProfileMyAcc}
	Click Element    ${UpdateProfileMyAcc}
    Sleep    10

Validate profile has been updated
	Wait Until Page Contains Element        ${ProfileUpdateMsg}
	Element Should Be Visible        ${ProfileUpdateMsg}
	Capture Page Screenshot
	${SuccessMsg}=    Get Text    ${ProfileUpdateMsg}
	Log    The success message of password update displayed as: ${SuccessMsg}
