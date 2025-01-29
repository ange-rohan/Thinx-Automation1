*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RejectCookies}        css: #onetrust-consent-sdk #onetrust-reject-all-handler

*** Keywords ***
Click Reject Cookies Button
	Wait Until Element Is Visible       ${RejectCookies}    
	Element Should Be Enabled       ${RejectCookies}    
	Click Element       ${RejectCookies}    