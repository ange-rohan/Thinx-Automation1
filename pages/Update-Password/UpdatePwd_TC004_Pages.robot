*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Variables ***
${CloseBtn}     css: #myAccount-section #myAccount i
${MyActDescription}     css: #myAccount-section .description

*** Keywords ***
Click on close cta and validate collapse the section
	Wait Until Element Is Visible    ${CloseBtn}
	Element Should Be Visible        ${CloseBtn}
	Click Element    ${CloseBtn}
    Sleep    10
    Wait Until Element Is Visible    ${Edit}
    Element Should Be Visible    ${Edit}
