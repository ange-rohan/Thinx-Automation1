*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot

*** Variables ***
${CloseCookiSettings}        //button[@id='close-pc-btn-handler']

*** Keywords ***
Select only do not sell checkbox from footer section of do not sell info page
    Execute Javascript    window.scrollTo(0,600)
	Sleep    5
	Wait Until Page Contains Element      ${DoNotSellCheckbox}
	Element Should Be Visible       ${DoNotSellCheckbox}
	Click Button        ${DoNotSellCheckbox}
    Sleep    5
    Capture Page Screenshot
	Click Button        ${SubmitCTA}
    Sleep    5

Close cookie settings section
    Wait Until Page Contains Element        ${CloseCookiSettings}
    Element Should Be Visible    ${CloseCookiSettings}
    Click Element            ${CloseCookiSettings}