*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ExpandPrivacy}    css: #privacy
${PrivacyDescription}   css: #preference-center-privacy-content #DonotsendinfoText
${PrivacyHeading}   css: #privacy-heading
${PrivacySubHeading}    css: #privacy-subHeading-ls
${PrivacyCenter}    xpath: //p[contains(text(),'approach to privacy')]
${PrivacyPolicy}    xpath: //p[contains(text(),'Refresh your knowledge')]


*** Keywords ***
Expand Privacy Section
	Execute Javascript    window.scrollTo(0,400)
	Sleep    5
	Wait Until Element Is Visible    ${ExpandPrivacy}
	Element Should Be Visible        ${ExpandPrivacy}
	Click Element        ${ExpandPrivacy}

Validate all the Privacy fields are present
	Wait Until Element Is Visible    ${PrivacyDescription}
	Element Should Be Visible        ${PrivacyDescription}

	Wait Until Element Is Visible    ${PrivacyHeading}
	Element Should Be Visible        ${PrivacyHeading}

	Wait Until Element Is Visible    ${PrivacySubHeading}
	Element Should Be Visible        ${PrivacySubHeading}

	Wait Until Element Is Visible    ${PrivacyCenter}
	Element Should Be Visible        ${PrivacyCenter}
    Capture Page Screenshot
	Wait Until Element Is Visible    ${PrivacyPolicy}
	Element Should Be Visible        ${PrivacyPolicy}