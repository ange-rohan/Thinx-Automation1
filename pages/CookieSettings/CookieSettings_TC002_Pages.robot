*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot

*** Variables ***
${PerformanceCookies}   xpath: //button[@aria-controls='ot-desc-id-C0002']
${FunctionalCookies}    xpath: //button[@aria-controls='ot-desc-id-C0003']
${TargetingCookies}     xpath: //button[@aria-controls='ot-desc-id-C0004']
${MarketingCookies}     xpath: //button[@aria-controls='ot-desc-id-C0012']
${StrictlyNecCookies}   xpath: //button[@aria-controls='ot-desc-id-C0001']
${AlwaysActive}         css: .ot-always-active-group .ot-always-active
${AllToggleButtons}     xpath: //input[@aria-checked='true']
${StrNecCookiesText}    css: .ot-acc-txt #ot-desc-id-C0001
${PerformanceCookiesText}   css: .ot-acc-txt #ot-desc-id-C0002
${FunctionalCookiesText}    css: .ot-acc-txt #ot-desc-id-C0003
${TargetingCookiesText}     css: .ot-acc-txt #ot-desc-id-C0004
${MarketingCookiesText}     css: .ot-acc-txt #ot-desc-id-C0012


*** Keywords ***
Validate all the Consent Preferences
	Scroll Element Into View    ${PerformanceCookies}
	Scroll Element Into View    ${TargetingCookies}
	Scroll Element Into View    ${MarketingCookies}
    Sleep    5
	Wait Until Element Is Visible   ${PerformanceCookies}
	Element Should Be Visible       ${PerformanceCookies}

	Wait Until Element Is Visible   ${FunctionalCookies}
	Element Should Be Visible       ${FunctionalCookies}

	Wait Until Element Is Visible   ${TargetingCookies}
	Element Should Be Visible       ${TargetingCookies}

	Wait Until Element Is Visible   ${MarketingCookies}
	Element Should Be Visible       ${MarketingCookies}
	Capture Page Screenshot
	Sleep    2

Validate Always active text and toggle button in manage content preference section
	Wait Until Element Is Visible   ${StrictlyNecCookies}
	Element Should Be Visible       ${StrictlyNecCookies}

	Wait Until Element Is Visible   ${AlwaysActive}
	Element Should Be Visible       ${AlwaysActive}
	Sleep    2

Validate + icon and expand and view all the descriptions
	Click Element    ${StrictlyNecCookies}
	${StrictlyNecCookiesDescription}=  Get Text   ${StrNecCookiesText}
	Log    The Strictly necessary cookies description after expanding + icon: ${StrictlyNecCookiesDescription}
	Capture Element Screenshot      ${StrNecCookiesText}
    Sleep    2

	Click Element    ${PerformanceCookies}
	${PerformanceCookiesDescription}=  Get Text   ${PerformanceCookiesText}
	Log    The Performance cookies description after expanding + icon: ${PerformanceCookiesDescription}
	Capture Element Screenshot    ${PerformanceCookiesText}
	Sleep    2

	Click Element    ${FunctionalCookies}
	${FunctionalCookiesDescription}=  Get Text     ${FunctionalCookiesText}
	Log    The Functional cookies description after expanding + icon: ${FunctionalCookiesDescription}
	Capture Element Screenshot    ${FunctionalCookiesText}
    Sleep    2

	Click Element    ${TargetingCookies}
	${TargetingCookiesDescription}=  Get Text     ${TargetingCookiesText}
	Log    The Targeting cookies description after expanding + icon: ${TargetingCookiesDescription}
	Capture Element Screenshot    ${TargetingCookiesText}
    Sleep    2

	Click Element    ${MarketingCookies}
	${MarketingCookiesDescription}=  Get Text    ${MarketingCookiesText}
	Log    The Marketing cookies description after expanding + icon: ${MarketingCookiesDescription}
	Capture Element Screenshot    ${MarketingCookiesText}
