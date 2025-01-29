*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${SignInNav}                //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//a[contains(.,'Sign in')]
${SignInURL}                https://www.thinx.com/account/login
${Email}                    //input[@id='CustomerEmail']
${Password}                 //input[@id='CustomerPassword']
${TextParagrapgh}           //p[contains(.,'By signing in or registering, you agree that your information may be used to per')]
${ForgotPwdLink}           //a[contains(.,'Forgot your password?')]
${CreateAccountLink}      //a[contains(.,'Create account')]
${LoginCTA}                //button[.='Sign in']



*** Keywords ***
Login Page Opened
	Wait Until Element Is Visible     ${SignIn_Nav}
    Element Should Be Visible         ${SignIn_Nav}
    Click Element                    ${SignIn_Nav}

Validate all the mandatory data on login page
	Wait Until Element Is Visible     ${Email}
    Element Should Be Visible         ${Email}
    Wait Until Element Is Visible     ${Password}
    Element Should Be Visible         ${Password}
    Wait Until Element Is Visible     ${TextParagrapgh}
    Element Should Be Visible         ${TextParagrapgh}
    Wait Until Element Is Visible     ${ForgotPwdLink}
    Element Should Be Visible         ${ForgotPwdLink}
    Wait Until Element Is Visible     ${CreateAccountLink}
    Element Should Be Visible         ${CreateAccountLink}
    Capture Page Screenshot
    Wait Until Element Is Visible     ${LoginCTA}
    Element Should Be Visible         ${LoginCTA}