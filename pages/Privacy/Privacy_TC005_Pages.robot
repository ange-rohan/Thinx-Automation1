*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot

*** Keywords ***
Validate both checkbox should be selected in do not sell info section
    Execute Javascript    window.scrollTo(0,600)
    Sleep    2
    Wait Until Page Contains Element        ${DoNotSellCheckbox}
    Element Should Be Visible    ${DoNotSellCheckbox}
    Element Attribute Value Should Be        ${DoNotSellCheckbox}        checked        true
    Sleep    5

    Capture Page Screenshot

    Wait Until Page Contains Element        ${LimitTheUseCheckBox}
    Element Should Be Visible    ${LimitTheUseCheckBox}
    Element Attribute Value Should Be        ${LimitTheUseCheckBox}        checked        true
