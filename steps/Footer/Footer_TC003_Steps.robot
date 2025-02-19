*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC003_Pages.robot


*** Keywords ***

Validate Terms Link Section Is Visible
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5
    Wait Until Element Is Visible    ${TermsLinkSection}
    Element Should Be Visible    ${TermsLinkSection}


Click on Terms and Conditions Link from Footer Section
    Wait Until Page Contains Element        ${CookieSettings}    
    Element Should Be Visible        ${CookieSettings}      
    
Validate Navigation to Privacy Page
	Wait Until Element Is Visible        ${PrivacyPolicyFooter}
	Element Should Be Visible      ${PrivacyPolicyFooter}
    Click Element            ${PrivacyPolicyFooter}
    Sleep    5
    Location Should Be    ${PrivacyURL}
    Wait Until Element Is Visible     ${H1}
        ${H1}=    Get Text     ${H1}
    Should Contain      ${H1}      Privacy Policy


Validate Navigation to Terms Page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible        ${TermsCondLinkFooter}
	Element Should Be Visible       ${TermsCondLinkFooter}
    Click Element             ${TermsCondLinkFooter}
    Sleep    5
    Location Should Be    ${TermsURL}
    Wait Until Element Is Visible     ${H1}
        ${H1}=    Get Text     ${H1}
    Should Contain      ${H1}      Terms of Use


Validate Navigation to Sitemap
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible        ${Sitemap}
	Element Should Be Visible        ${Sitemap}
    Click Element              ${Sitemap}
    Sleep    5
    Location Should Be    ${SitemapURL}
    Wait Until Element Is Visible     ${H1}
        ${H1}=    Get Text     ${H1}
    Should Contain      ${H1}      Sitemap   

Validate Navigation to Accessibility Page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible        ${Accessibility}
	Scroll Element Into View        ${Accessibility}
    Click Element              ${Accessibility}
    Sleep    5
    Location Should Be    ${AccessibilityURL}


Validate Navigation to Limit the Use of My Sensitive Personal Information Page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element        ${LimitTheUseLinkFooter}
    Scroll Element Into View    ${LimitTheUseLinkFooter}
    Click Element    locator=${LimitTheUseLinkFooter}
    Sleep    2
    Location Should Be    ${LimitTheUseURL}
    Wait Until Element Is Visible     ${H1}
        ${H1}=    Get Text     ${H1}
    Should Contain      ${H1}      We respect your right to be in charge of your personal info





