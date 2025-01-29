*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Variables ***
${Exelator}     xpath: //li[@data-optanongroupid='C0009']
${FunctionalCookieDetails}  xpath: //button[@data-parent-id='C0003']
${TargetingCookiesDetail}   xpath: //button[@data-parent-id='C0004']
${YouTube}  xpath: //li[@data-optanongroupid='C0022']
${BazaarVoice}  xpath: //li[@data-optanongroupid='C0014']
${SurveyGizmo}  xpath: //li[@data-optanongroupid='C0015']
${Revtrax}  xpath: //li[@data-optanongroupid='C0016']
${SmartCommerce}    xpath: //li[@data-optanongroupid='C0017']
${GoogleAnalytics}  xpath: //li[@data-optanongroupid='C0019']
${BriteVerify}  xpath: //li[@data-optanongroupid='C0021']
${Equalweb}     xpath: //li[@data-optanongroupid='C0010']
${FullStory}    xpath: //li[@data-optanongroupid='C0039']
${MarketingCookieDetails}   xpath: //button[@data-parent-id='C0012']

*** Keywords ***
Validate detail link of Functional cookies
	Wait Until Element Is Visible   ${FunctionalCookies}
	Element Should Be Visible   ${FunctionalCookies}
	Click Element    ${FunctionalCookies}
	Element Should Be Visible    ${FunctionalCookieDetails}
	${ExelatorText}=    Get Text    ${Exelator}
	log  The functional cookie of description is: ${ExelatorText}
	Sleep    2

Validate detail link of Targeting cookies
	Wait Until Element Is Visible     ${TargetingCookies}
	Element Should Be Visible   ${TargetingCookies}
	Click Element   ${TargetingCookies}
	Element Should Be Visible    ${TargetingCookiesDetail}
	${YouTubeText}=     Get Text    ${YouTube}
	Log    The targeting cookie of description is: ${YouTubeText}
    Sleep    2

Validate detail link of Marketing cookies
	Wait Until Element Is Visible     ${MarketingCookies}
	Element Should Be Visible   ${MarketingCookies}
	Click Element   ${MarketingCookies}
    Sleep    2

	Element Should Be Visible    ${BazaarVoice}
	${BazaarVoiceText}=     Get Text    ${BazaarVoice}
	Log    The Marketing cookie of Bazaar Voice description is: ${BazaarVoiceText}
    Sleep    2

	Element Should Be Visible    ${SurveyGizmo}
	${SurveyGizmoText}=     Get Text    ${SurveyGizmo}
	Log    The Marketing cookie of SurveyGizmo description is: ${SurveyGizmoText}

	Element Should Be Visible    ${Revtrax}
	${RevtraxText}=     Get Text    ${Revtrax}
	Log    The Marketing cookie of Revtrax description is: ${RevtraxText}

	Element Should Be Visible    ${SmartCommerce}
	${SmartCommerceText}=     Get Text    ${SmartCommerce}
	Log    The Marketing cookie of SmartCommerce description is: ${SmartCommerceText}
    Sleep    2

	Element Should Be Visible    ${GoogleAnalytics}
	${GoogleAnalyticsText}=     Get Text    ${GoogleAnalytics}
	Log    The Marketing cookie of GoogleAnalytics description is: ${GoogleAnalyticsText}

	Element Should Be Visible    ${BriteVerify}
	${BriteVerifyText}=     Get Text    ${BriteVerify}
	Log    The Marketing cookie of BriteVerify description is: ${BriteVerifyText}

	Element Should Be Visible    ${Equalweb}
	${EqualwebText}=     Get Text    ${Equalweb}
	Log    The Marketing cookie of Equalweb description is: ${EqualwebText}

	Element Should Be Visible    ${FullStory}
	${FullStoryText}=     Get Text    ${FullStory}
	Log    The Marketing cookie of FullStory description is: ${FullStoryText}
    Sleep    2

	Element Should Be Visible    ${MarketingCookieDetails}
