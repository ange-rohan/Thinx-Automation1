*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource      ../../pages/Login/Login_TC003_Pages.robot

*** Keywords ***

Validate clicked Logout CTA to Logout
    Wait Until Element Is Visible    ${LogoutCTA}
    Click Element    ${LogoutCTA}

Validate landed on home page after logged out
	Wait Until Element Is Visible     ${SignInNav}
    Element Should Be Visible         ${SignInNav}
  
  