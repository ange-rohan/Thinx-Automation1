*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PDP/PDP_TC004_Pages.robot
Suite Setup      Set Selenium Timeout  10s


*** Keywords ***
Accept Cookies and Close Welcome Modal
    Sleep    5
    Wait Until Page Contains Element    ${CloseModal}
    Click Element                        ${CloseModal}


Validate You Can Select Different Color Swatch
    Wait Until Page Contains Element     ${ColorSwatch} 
    Element Should Be Visible            ${ColorSwatch} 
    Click Element                        ${ColorSelector}  
    Capture Page Screenshot
    Element Should Be Visible          ${ColorSelectedText} 
    Element Text Should Be      ${ColorSelected}   ${ColorSelectedText} 

Validate You Can Add Different Colors to Cart
    Element Should Be Visible            ${AddtoBagCTA}
    Click Element                        ${AddtoBagCTA}
    Capture Page Screenshot
    Wait Until Element Is Visible        ${CartColorText}  
    Wait Until Element Is Visible        ${CartImage}
    Capture Element Screenshot    locator=${CartColorText}  