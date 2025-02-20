*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Modal/Modal_TC001_Pages.robot
Resource          ../../pages/Modal/Modal_TC002_Pages.robot

*** Keywords ***

Trigger Modal Email Error Message
    Wait Until Element Is Visible    ${ModalEmailField}
    Set Focus To Element    ${ModalEmailField}
    Element Should Be Visible    ${ModalEmailField}
    Wait Until Element Is Visible    ${ContinueCTA}
    Scroll Element Into View    ${ContinueCTA}
    Click Element    ${ContinueCTA}

Validate Email Field Error Message
    Sleep    5
    Wait Until Element Is Visible    ${ModalEmailFieldError}
    Element Should Be Visible    ${ModalEmailFieldError}
   ${ModalEmailFieldError}=    Get Text   ${ModalEmailFieldError}
    Should Contain    ${ModalEmailFieldError}   Please enter a valid email address.

Validate Checkbox Error Message
    Wait Until Element Is Visible    ${CheckboxFieldError}
    Element Should Be Visible    ${CheckboxFieldError}
    ${CheckboxFieldError}=    Get Text    ${CheckboxFieldError}
    Should Contain    ${CheckboxFieldError}  Please check the box to acknowledge our terms and policies to continue.


