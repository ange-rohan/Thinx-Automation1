*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot

*** Variables ***
${FirstPartyCookies}    xpath: //button[@aria-label='First Party Cookies View Cookies']
${FirstPartyCookiesDetails}     xpath: (//li[@class='ot-host-info'])[1]
${BackBtn}      css: #onetrust-consent-sdk #ot-pc-lst .back-btn-handler
${YouTubeCookies}   xpath: (//button[@aria-label='youtube.com View Cookies'])[1]
${YouTubeCookiesDetails}    xpath: (//li[@class='ot-host-info'])[8]
${SurveyGizmoCookie}    xpath: //button[@aria-label='Survey Gizmo View Cookies']
${SurveyGizmoCookieDetails}     xpath: (//li[@class='ot-host-info'])[5]

*** Keywords ***
Validate cookie details of functional cookies
	Wait Until Element Is Visible   ${FunctionalCookies}
	Element Should Be Visible   ${FunctionalCookies}
	Click Element    ${FunctionalCookies}
	Element Should Be Visible    ${FunctionalCookieDetails}
	Click Element    ${FunctionalCookieDetails}
	Element Should Be Visible    ${FirstPartyCookies}
	Click Element    ${FirstPartyCookies}
	${FirstPartyCookiesDetailsText}=    Get Text    ${FirstPartyCookiesDetails}
	Log    The cookie details of FirstParty cookie under Functional cookie displayed as: ${FirstPartyCookiesDetailsText}

	#go back to the cookie lists(Click on back CTA)
	Wait Until Element Is Visible    ${BackBtn}
	Click Element    ${BackBtn}
    Sleep    5

Validate cookie details of targeting cookies
	Wait Until Element Is Visible     ${TargetingCookies}
	Element Should Be Visible   ${TargetingCookies}
	Click Element   ${TargetingCookies}
	Element Should Be Visible    ${TargetingCookiesDetail}
	Click Element    ${TargetingCookiesDetail}
	Element Should Be Visible    ${YouTubeCookies}
	Click Element    ${YouTubeCookies}

	${YouTubeCookiesDetailsText}=    Get Text    ${YouTubeCookiesDetails}
	Log    The cookie details of YouTube cookie under Targeting cookie displayed as: ${YouTubeCookiesDetailsText}
	Wait Until Element Is Visible    ${BackBtn}
	Click Element    ${BackBtn}
	Sleep    5

Validate cookie details of marketing cookies
	Wait Until Element Is Visible     ${MarketingCookies}
	Element Should Be Visible   ${MarketingCookies}
	Click Element   ${MarketingCookies}
	Element Should Be Visible    ${MarketingCookieDetails}
	Click Element    ${MarketingCookieDetails}

	Element Should Be Visible    ${SurveyGizmoCookie}
	Click Element    ${SurveyGizmoCookie}

	${SurveyGizmoCookieDetailsText}=    Get Text    ${SurveyGizmoCookieDetails}
	Log    The cookie details of SurveyGizmo cookie under Marketing cookie displayed as: ${SurveyGizmoCookieDetailsText}
	Wait Until Element Is Visible    ${BackBtn}
	Click Element    ${BackBtn}




