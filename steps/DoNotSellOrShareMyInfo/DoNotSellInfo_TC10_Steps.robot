*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot

*** Keywords ***
Validate both checkboxes are unchecked in do not sell info section
    Execute Javascript    window.scrollTo(0,600)
    Wait Until Page Contains Element    ${DoNotSellCheckbox}
    Element Should Not Contain        ${DoNotSellCheckbox}        @checked=checked
    Sleep    5
    
    Wait Until Page Contains Element        ${LimitTheUseCheckbox}
    Element Should Not Contain        ${LimitTheUseCheckbox}       @checked=checked
    Capture Page Screenshot
    Sleep    5
    
    