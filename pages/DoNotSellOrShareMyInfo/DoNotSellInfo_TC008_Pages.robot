*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***
${Cancel&Return}        //button[@id='btn-DataPrivacyPreference-cancel']

*** Keywords ***
Click on cancel and return on do not sell info section
    Scroll Element Into View        ${Cancel&Return}
    Wait Until Page Contains Element        ${Cancel&Return}    
    Element Should Be Visible        ${Cancel&Return}
    Click Element    ${Cancel&Return}
   
Validate landed back to signin page after clicking on cancel from do not sell info section
    Wait Until Page Contains Element        ${SignInBanner}           
    Element Should Be Visible        ${SignInBanner}
    ${ValidationHomePage}=    Get Text        ${SignInBanner}
    Log    Landed back to sign in page: ${ValidationHomePage}
    Capture Page Screenshot