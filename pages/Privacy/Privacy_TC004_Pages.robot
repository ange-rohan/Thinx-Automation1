*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Privacy/Privacy_TC001_Pages.robot

*** Variables ***
${CloseCTAPrivacy}  css: #privacy


*** Keywords ***
Click on close CTA of Privacy section
	Wait Until Element Is Visible    ${CloseCTAPrivacy}
	Element Should Be Visible    ${CloseCTAPrivacy}
	Capture Page Screenshot
	Click Element    ${CloseCTAPrivacy}

Validate collapse the section after clicking on close CTA of Privacy
	Wait Until Element Is Visible    ${ExpandPrivacy}
	Element Should Be Visible    ${ExpandPrivacy}