*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PDP/PDP_TC002_Pages.robot


*** Keywords ***
Validate Add to Cart From PDP
    Wait Until Page Contains Element       ${FirstSize}
    Element Should Be Visible        ${FirstSize}
    Click Element                    ${FirstSize}
    Sleep    2 
    Wait Until Page Contains Element    ${ColorSwatch}
    Element Should Be Visible            ${ColorSwatch}
    Sleep    5
    Wait Until Page Contains Element    ${CloseModal}
    Click Element                        ${CloseModal}

    Wait Until Page Contains Element        ${AddtoBagCTA}
    Element Should Be Visible            ${AddtoBagCTA}
    Click Element                        ${AddtoBagCTA}
    Capture Page Screenshot


Validate Cart Count on Add to Cart
    Wait Until Page Contains Element        ${CartTotal}
    Sleep    5
    Element Text Should Be            ${CartTotal}     ${Expected_Text_Cart_Total}


