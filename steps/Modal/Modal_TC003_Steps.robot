*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Modal/Modal_TC001_Pages.robot
Resource          ../../pages/Modal/Modal_TC002_Pages.robot
Resource          ../../pages/Modal/Modal_TC003_Pages.robot

*** Keywords ***

Trigger Cookies Error Message on Modal
   Wait Until Element Is Visible    ${ContinueCTA}
   Scroll Element Into View    ${ContinueCTA}
   Click Element    ${ContinueCTA}


Review Cookies Error Messaging Content on Modal
    Sleep    2
    Wait Until Element Is Visible    ${ModalEmailFieldErrorCookies}
    Element Should Be Visible    ${ModalEmailFieldErrorCookies}
  ${ModalEmailFieldErrorCookies}=    Get Text   ${ModalEmailFieldErrorCookies}
    Should Contain   ${ModalEmailFieldErrorCookies}   Unable to complete request. Please review cookie settings.