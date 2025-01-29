*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC007_Pages.robot

*** Keywords ***
Click on California Privacy Rights link
    Wait Until Page Contains Element        ${CaliforniaRightsLink}    
    Element Should Be Visible        ${CaliforniaRightsLink}   
    Click Element        ${CaliforniaRightsLink}
    Sleep    5

Validate navigation to California Privacy Rights page
    Switch Window        Global Privacy Policy – Scopes and Updates | Kimberly- Clark
    Wait Until Page Contains Element            ${Heading1CaliforniaPrivacy}
    Element Should Be Visible        ${Heading1CaliforniaPrivacy}
    ${Heading1CaliforniaPrivacyText}=    Get Text        ${Heading1CaliforniaPrivacy}    
    Log        ${Heading1CaliforniaPrivacyText}
    Capture Page Screenshot
    Sleep    3
    ${Heading2CaliforniaPrivacyText}=    Get Text        ${Heading2CaliforniaPrivacy}
    Log        ${Heading2CaliforniaPrivacyText}
    Capture Element Screenshot        ${Heading2CaliforniaPrivacy}


        