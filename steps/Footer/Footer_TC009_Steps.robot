*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC009_Pages.robot
Resource          ../../pages/ContactUs/ContactUs_TC003_Pages.robot

*** Keywords ***
Validate all Privacy Links are available just above the Create account CTA on Registration page
    Execute Javascript    window.scrollTo(0,300)
    Sleep    5
    Wait Until Page Contains Element        ${PrivacyPolicyLinkReg}
    Element Should Be Visible        ${PrivacyPolicyLinkReg}
    Capture Page Screenshot
    Capture Element Screenshot       ${PrivacyPolicyLinkReg}
    
    Element Should Be Visible        ${TandCondLinkReg}    
    Capture Element Screenshot        ${TandCondLinkReg}

    Element Should Be Visible        ${FinIncentivesReg}
    Capture Element Screenshot        ${FinIncentivesReg}

Validate all Privacy Links are available just above the SignIn CTA on Login page
    Wait Until Page Contains Element        ${PrivacyPolicyLink}
    Element Should Be Visible        ${PrivacyPolicyLink}
    Capture Page Screenshot
    Capture Element Screenshot       ${PrivacyPolicyLink}

    Element Should Be Visible        ${TandCondLinkLogin}
    Capture Element Screenshot       ${TandCondLinkLogin}

    Element Should Be Visible        ${FinIncentivesLogin}
    Capture Element Screenshot        ${FinIncentivesLogin}


