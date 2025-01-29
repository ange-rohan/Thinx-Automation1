*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Keywords ***
Validate landed on home page after logged out
	Wait Until Element Is Visible     ${SignIn_Btn}
    Element Should Be Visible         ${SignIn_Btn}
    Log    Successfully logged out from the profile and landed on home page
