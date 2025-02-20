*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Modal/Modal_TC001_Pages.robot

*** Keywords ***

Validate Welcome Modal Displays
    Wait Until Page Contains Element     ${EntireModal} 
    Element Should Be Visible            ${EntireModal} 
    Capture Element Screenshot           ${EntireModal} 

Validate Modal Display
    Wait Until Element Is Visible    ${ThinxLogo}
    Element Should Be Visible    ${ThinxLogo}
    Wait Until Element Is Visible    ${ModalEmailField}
    Element Should Be Visible    ${ModalEmailField}
    

Validate Modal Content
    Wait Until Element Is Visible     ${ModalHeading}
      ${ModalHeading}=    Get Text   ${ModalHeading}
    Should Contain    ${ModalHeading}    hey wait, want $5 off?
    Sleep    2
    Wait Until Element Is Visible     ${ModalDescription}
      ${ModalDescription}=    Get Text   ${ModalDescription}
    Should Contain   ${ModalDescription}   Sign up to stay in the loop, and get $5 off your first purchase of $35 or more.
   
    Wait Until Element Is Visible     ${ModalLegalText}
      ${ModalLegalText}=    Get Text    ${ModalLegalText}
    Should Contain    ${ModalLegalText}  By signing up, I affirm that I am at least 13 years old (14 years old for residents of Quebec, Canada) and that I agree to the Thinx, Inc. Terms of Use, Privacy Policy, Washington Health Data Rights, and Financial Incentives Offered.

        Wait Until Element Is Visible     ${NoThanksLink}
       ${NoThanksLink}=    Get Text     ${NoThanksLink}
    Should Contain     ${NoThanksLink}  no thanks, maybe later



Validate Modal Close Methods
    Wait Until Element Is Visible    ${ModalCloseX}
    Element Should Be Visible    ${ModalCloseX}
    Wait Until Element Is Visible    ${NoThanksLink}
    Element Should Be Visible    ${NoThanksLink}

