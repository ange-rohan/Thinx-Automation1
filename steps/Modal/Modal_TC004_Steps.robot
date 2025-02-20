*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Modal/Modal_TC001_Pages.robot
Resource          ../../pages/Modal/Modal_TC002_Pages.robot
Resource          ../../pages/Modal/Modal_TC003_Pages.robot
Resource          ../../pages/Modal/Modal_TC004_Pages.robot

*** Variables ***
${ModalEmail}            Test@test.com


*** Keywords ***

Enter Email Address on Welcome Modal
	[Arguments]                      ${ModalEmail} 
    Sleep    5
    Scroll Element Into View     ${ModalEmailField} 
    Wait Until Element Is Visible     ${ModalEmailField}  timeout=10s
    Wait Until Element Is Enabled     ${ModalEmailField}       10
    Input Text                       ${ModalEmailField}      ${ModalEmail} 

Click Continue CTA on Modal
    Scroll Element Into View    ${ModalCheckbox}
    Wait Until Element Is Visible    ${ModalCheckbox}
    Click Element    ${ModalCheckbox}
    Scroll Element Into View    ${ContinueCTA}
    Wait Until Element Is Visible    ${ContinueCTA}
    Click Element    ${ContinueCTA}

Confirm Visibility of All Set Modal
    Sleep    5
    Wait Until Element Is Visible    ${ThinxLogo}
    Element Should Be Visible    ${ThinxLogo}
    Wait Until Element Is Visible    ${ModalCloseX}
    Element Should Be Visible    ${ModalCloseX}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${HeadingAllSet}
    Element Should Be Visible    ${HeadingAllSet}
    ${HeadingAllSet}=    Get Text   ${HeadingAllSet}
    Should Contain   ${HeadingAllSet}  all set!
    Wait Until Element Is Visible    ${ConfirmationDescription}
    Element Should Be Visible    ${ConfirmationDescription}
    ${ConfirmationDescription}=    Get Text    ${ConfirmationDescription}
    Should Contain    ${ConfirmationDescription}  Check your email for your $5 off code, and get those undies you've been eyeing.

Confirm Visibility of Keep Shopping CTA & Click
    Wait Until Element Is Visible    ${KeepShoppingCTA}
    Element Should Be Visible    ${KeepShoppingCTA}
    Scroll Element Into View    ${KeepShoppingCTA}
    Click Element    ${KeepShoppingCTA}

