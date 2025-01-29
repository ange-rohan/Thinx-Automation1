*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC004_Pages.robot
Resource          ../../pages/ContactUs/ContactUs_TC003_Pages.robot

*** Keywords ***
Click on Terms and Conditions Link from Footer Section
    Execute Javascript    window.scrollTo(0,5000)
    Sleep    5
    Wait Until Page Contains Element        ${TermsCondLinkFooter}    
    Element Should Be Visible        ${TermsCondLinkFooter}    
    Click Element        ${TermsCondLinkFooter}
    Sleep    5
    
Validate Navigation to Terms and Conditions Page
    Switch Window     Terms of Use
    Sleep    3
    Wait Until Page Contains Element        ${TermsOfUse}
    Capture Page Screenshot
	Wait Until Element Is Visible       ${TermsOfUse}
	Element Should Be Visible       ${TermsOfUse}
	${TermsOfUseMsg}=  Get Text    ${TermsOfUse}
	Log    The opened browser of terms and conditions heading is : ${TermsOfUseMsg}
	Sleep    5
	Switch Window    main
	Sleep    10

Click on Privacy Policy Link from Footer Section
    Wait Until Page Contains Element        ${PrivacyPolicyFooter}
    Element Should Be Visible        ${PrivacyPolicyFooter}
    Click Element        ${PrivacyPolicyFooter}
    Sleep    5

Validate Navigation to Privacy Policy Page
    Switch Window     Global Privacy Policy – Scopes and Updates | Kimberly- Clark
    Capture Page Screenshot
	Wait Until Page Contains Element    ${GlobalPrivacyPolicy}
	Element Should Be Visible       ${GlobalPrivacyPolicy}
	${GlobalPrivacyPolicyMsg}=  Get Text    ${GlobalPrivacyPolicy}
	Log    The opened browser of privcay policy heading is : ${GlobalPrivacyPolicyMsg}
	Sleep    5
    