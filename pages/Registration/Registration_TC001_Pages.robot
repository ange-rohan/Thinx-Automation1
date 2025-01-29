*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot


*** Keywords ***
Validate all the fields
	Wait Until Element Is Visible     ${Firstname}
    Element Should Be Visible         ${Firstname}
    Wait Until Element Is Visible     ${Lastname}
    Element Should Be Visible         ${Lastname}
    Wait Until Element Is Visible     ${EmailAddress}
    Element Should Be Visible         ${EmailAddress}
    Wait Until Element Is Visible     ${Password}
    Element Should Be Visible         ${Password}
    Wait Until Element Is Visible     ${Month}
    Element Should Be Visible         ${Month}
    Wait Until Element Is Visible     ${Year}
    Element Should Be Visible         ${Year}
    Wait Until Element Is Visible     ${Updates_KC}
    Element Should Be Visible         ${Updates_KC}
    Wait Until Element Is Visible     ${Terms_Conditions}
    Element Should Be Visible         ${Terms_Conditions}
