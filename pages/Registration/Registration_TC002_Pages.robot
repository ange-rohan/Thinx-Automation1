*** Settings ***
Library       SeleniumLibrary
Library       String
Library       BuiltIn
Resource          ../../pages/Registration/Registration_TC001_Pages.robot

*** Variables ***
${AlreadyExistEmailMsg}  xpath: //div[@class='error-msg-text-wrap']
${EMAIL_DOMAIN}  mailinator.com

*** Keywords ***
Generate Timestamped Email
    ${timestamp}=  Get Time  epoch
    ${RegisterEmail}=  Set Variable  email+${timestamp}@${EMAIL_DOMAIN}
    RETURN  ${RegisterEmail}


Enter First Name
	 [Arguments]                       ${FName}
	Sleep    5
    Wait Until Element Is Enabled     ${Firstname}          5
	Scroll Element Into View    locator=${Firstname}
    Input Text                         ${Firstname}        ${FName}

Enter Last Name
	[Arguments]                       ${LName}
    Sleep    5
    Scroll Element Into View    locator=${Lastname}
    Wait Until Element Is Visible      ${Lastname}  timeout=10s
    Wait Until Element Is Enabled     ${Lastname}          10
    Input Text                       ${Lastname}        ${LName}

Enter New Account Email
	[Arguments]                       ${RegisterEmail}
    Sleep    5
    Scroll Element Into View    locator=${RegisterEmailAddress}
    Wait Until Element Is Visible     ${RegisterEmailAddress}  timeout=10s
    Wait Until Element Is Enabled     ${RegisterEmailAddress}        10
    Input Text                       ${RegisterEmailAddress}       ${RegisterEmail}

Enter New Account Password
	[Arguments]                       ${RegisterPwd}
    Sleep    5
    Scroll Element Into View    locator=${RegisterPassword}
    Wait Until Element Is Visible     ${RegisterPassword}  timeout=10s
    Wait Until Element Is Enabled     ${RegisterPassword}         10
    Input Text                       ${RegisterPassword}        ${RegisterPwd}


Check Account Disclaimer Checkbox
    Wait Until Element Is Visible    ${DisclaimerCheckbox}
	Set Focus To Element    ${DisclaimerCheckbox}
	Click Element    ${DisclaimerCheckbox}
	Execute JavaScript  window.scrollTo(0, document.body.scrollHeight / 2)
	Wait Until Element Is Visible    ${CreateAccountCTA}
	Set Focus To Element    ${CreateAccountCTA}
	Capture Page Screenshot
	Click Element    ${CreateAccountCTA}