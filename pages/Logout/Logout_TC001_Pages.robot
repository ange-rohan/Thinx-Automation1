*** Settings ***
Library       SeleniumLibrary
Resource      ../../pages/Login/Login_TC001_Pages.robot
Resource      ../../pages/Login/Login_TC003_Pages.robot

*** Variables ***
${ProfilePageH1}       //h1[@class='h2']
${Password}            //input[@id='CustomerPassword']
${LogoutCTA}           //a[.='Log out']
${ExpectedURL}         https://www.thinx.com/
${SignInNav}           //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//a[contains(.,'Sign in')]

*** Keywords ***

Click the Logout CTA
    Wait Until Element Is Visible    ${LogoutCTA}
    Set Focus To Element    locator=${LogoutCTA}
    Click Element    ${LogoutCTA}
    Sleep    5

Confirm Homepage Visibility on Logout
    Sleep    5
    Location Should Be    ${ExpectedURL}
    Wait Until Element Is Visible    ${SignInNav}
    Set Focus To Element    ${SignInNav}
           ${SignInNav}=    Get Text    ${SignInNav}
    Should Contain     ${SignInNav}     Sign in