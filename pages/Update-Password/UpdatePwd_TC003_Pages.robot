*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Variables ***
${CancelBtn}        css: #myAccount-section-cancel


*** Keywords ***
Click on cancel button
	Wait Until Element Is Visible    ${CancelBtn}
	Element Should Be Visible        ${CancelBtn}
	Click Element    ${CancelBtn}
    Sleep    10

Validate all the passwords are set to blank fields
    ${CurrentPwdField}=    Get Text    ${CurrentPwd}
    Should Be Empty    ${CurrentPwdField}
    ${PasswordField}=    Get Text    ${Password}
    Should Be Empty    ${PasswordField}
    ${ConfPasswordField}=    Get Text    ${ConfirmPwd}
    Should Be Empty    ${ConfPasswordField}