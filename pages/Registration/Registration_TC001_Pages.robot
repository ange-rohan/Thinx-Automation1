*** Settings ***
Library       SeleniumLibrary
Resource      ../../pages/Meganav/Meganav_TC002_Pages.robot
Resource      ../../pages/Login/Login_TC001_Pages.robot


*** Variables ***
${Register}            //a[contains(.,'Create account')]
${Firstname}           //input[@id='RegisterForm-FirstName']
${Lastname}	           //input[@id='RegisterForm-LastName']
${RegisterEmailAddress}        //input[@id='RegisterForm-email']
${RegisterPassword}        //input[@id='RegisterForm-password']
${CreateAccountCTA}        //button[@class='w-full button button--primary']
${SignInLink}            //form[@id='create_customer']/a[contains(.,'Sign in')]
${DisclaimerText}        //div[@class='rte body-3 [&_a]:body-3-bold']/p[contains(.,'By signing up, I affirm that I am at least 13 years old (14 years old for reside')]
${DisclaimerCheckbox}     //input[@id='registration_disclaimer']
${H1}                    //h1[@class='flex justify-center mb-8 heading-3']


*** Keywords ***
Registration Page Opened
    Wait Until Element Is Visible    ${SignInNav}
    Set Focus To Element    ${SignInNav}
    Click Element    ${SignInNav}
    Sleep    5
    Wait Until Element Is Visible    ${CreateAccountLink}
    Set Focus To Element    ${CreateAccountLink}
    Click Element    ${CreateAccountLink}

Validate all the fields
    Wait Until Element Is Visible    ${H1}
    Element Should Be Visible    ${H1}
    ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    Create account
	Wait Until Element Is Visible     ${Firstname}
    Element Should Be Visible         ${Firstname}
    Wait Until Element Is Visible     ${Lastname}
    Element Should Be Visible         ${Lastname}
    Wait Until Element Is Visible     ${RegisterEmailAddress}
    Element Should Be Visible          ${RegisterEmailAddress}
    Wait Until Element Is Visible     ${RegisterPassword}
    Element Should Be Visible         ${RegisterPassword}
    Wait Until Element Is Visible     ${DisclaimerText}
    Element Should Be Visible         ${DisclaimerText}
    Wait Until Element Is Visible     ${DisclaimerCheckbox}
    Element Should Be Visible         ${DisclaimerCheckbox}
    Wait Until Element Is Visible     ${SignInLink}
    Element Should Be Visible        ${SignInLink}

