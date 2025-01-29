*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot

*** Variables ***
${FnameErrMsg}          xpath: //label[@id='consumer_firstname-error']
${LnameErrMsg}          xpath: //label[@id='consumer_lastname-error']
${EmailErrMsg}          xpath: //label[@id='consumer_email-error']
${PasswordErrMsg}       xpath: //label[@id='consumer_password-error']
${DOBErrMsg}            css: #dob-error


*** Keywords ***
Validate all mandatory blank field errors
    Wait Until Element Is Visible    ${FnameErrMsg}
    Element Should Be Visible        ${FnameErrMsg}
    ${FnameMsg}=    Get Text    ${FnameErrMsg}
    Log    The error message of blank field of FirstName: ${FnameMsg}

    Wait Until Element Is Visible    ${LnameErrMsg}
    Element Should Be Visible        ${LnameErrMsg}
    ${LnameMsg}=    Get Text    ${LnameErrMsg}
    Log    The error message of blank field of LastName: ${LnameMsg}

    Wait Until Element Is Visible    ${EmailErrMsg}
    Element Should Be Visible        ${EmailErrMsg}
    ${EmailMsg}=    Get Text    ${EmailErrMsg}
    Log    The error message of blank field of Email Address: ${EmailMsg}

    Wait Until Element Is Visible    ${PasswordErrMsg}
    Element Should Be Visible        ${PasswordErrMsg}
    ${PwdMsg}=    Get Text    ${PasswordErrMsg}
    Log    The error message of blank field of Password: ${PwdMsg}

    Scroll Element Into View         ${Updates_KC}
    Wait Until Element Is Visible    ${DOBErrMsg}
    Element Should Be Visible        ${DOBErrMsg}
    ${DOBMsg}=    Get Text    ${DOBErrMsg}
    Log    The error message of blank field of DOB: ${DOBMsg}


