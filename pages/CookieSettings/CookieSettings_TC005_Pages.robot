*** Settings ***
Library    SeleniumLibrary
Library    logging
Library    /Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/CustomLibrary.py
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot


*** Variables ***
${FirstPartyCookies}    xpath: //button[@aria-label='First Party Cookies View Cookies']
${FirstPartyCookiesDetails}     xpath: (//li[@class='ot-host-info'])[1]
${BackBtn}      css: #onetrust-consent-sdk #ot-pc-lst .back-btn-handler
${URL}        https://www.thinx.com/


*** Keywords ***
Reject Cookies And Check Console Logs
    [Arguments]  ${log_type}=browser  ${text_to_check}=load:delghtd
    ${logs}=  Get Console Logs  ${log_type}
    ${text_found}=  Set Variable  False
    :FOR  ${log}  IN  @{logs}
    \   ${message}=  Get From Dictionary  ${log}  message
    \   Run Keyword If  '${text_to_check}' in '${message}'  Set Variable  ${text_found}  True
    Run Keyword If  '${text_found}' == True  Fail  Text '${text_to_check}' found in console logs
    Log  Text '${text_to_check}' not found in console logs


