*** Settings ***
Library       SeleniumLibrary
Resource      ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***
${ProfilePageH1}       //h1[@class='h2']
${Password}            //input[@id='CustomerPassword']
${LogoutCTA}           //a[.='Log out']
${AddressCard}         //address[@class='w-full md:w-1/3 mb-2 sm:mb-4 not-italic border border-black py-4 px-4 rounded-lg+ inline-block aspect-ratio-[1]']

*** Keywords ***

Enter Username
	 [Arguments]                       ${user}
    Wait Until Element Is Enabled     ${Email}          5
    Input Text                         ${Email}         ${user}

Enter Password
	 [Arguments]                       ${pwd}
    Sleep    5
    Wait Until Element Is Visible      ${Password}  timeout=10s
    Wait Until Element Is Enabled     ${Password}          10
    Input Text                       ${Password}          ${pwd}

Click On SignIn CTA
    Execute Javascript    window.scrollTo(0,300)
    Sleep    5
    Element Should Be Visible         ${LoginCTA}
	Wait Until Page Contains Element         ${LoginCTA}
  	Click Button       ${LoginCTA}

Validate successfully landed on profile page
    Wait Until Element Is Visible    locator=${AddressCard}
    Element Should Be Visible    ${AddressCard}
    Wait Until Element Is Visible    ${LogoutCTA}
    Element Should Be Visible    ${LogoutCTA}
	 Wait Until Element Is Visible     ${ProfilePageH1}
    ${ProfilePageH1}=    Get Text   ${ProfilePageH1}
    Should Contain     ${ProfilePageH1}   Account
    
