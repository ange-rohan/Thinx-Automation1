*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot

*** Variables ***
${PerformanceCookies}   //div[.='Performance Cookies']
${FunctionalCookies}    //div[.='Functional Cookies']
${TargetingCookies}    //div[.='Targeting Cookies']
${MarketingCookies}     //div[.='Marketing Cookies']
${StrictlyNecCookies}   //div[.='Strictly Necessary Cookies']
${AlwaysActive}         //div[@class='ot-always-active']
${AllToggleButtons}     xpath: //input[@aria-checked='true']
${StrNecCookiesText}        //p[contains(.,'These cookies are necessary for the website to function and cannot be switched o')]
${PerformanceCookiesText}   //p[contains(.,'These cookies allow us to count visits and traffic sources so we can measure and')]
${FunctionalCookiesText}    //div[@class='ot-desc-cntr']/p[@class='ot-grp-desc ot-category-desc']
${TargetingCookiesText}     //p[contains(.,'These cookies may be set through our site by our advertising partners. They may')]
${MarketingCookiesText}     //div[@class='ot-desc-cntr']/p[@class='ot-grp-desc ot-category-desc']


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



Validate + icon and expand and view all the descriptions
	Click Element    ${StrictlyNecCookies}
	${StrictlyNecCookiesDescription}=  Get Text   ${StrNecCookiesText}
	Log    The Strictly necessary cookies description after expanding + icon: ${StrictlyNecCookiesDescription}
	Capture Element Screenshot      ${StrNecCookiesText}
    Sleep    2
	Wait Until Element Is Visible   ${AlwaysActive}
	Element Should Be Visible       ${AlwaysActive}

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
