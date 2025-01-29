*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PLP/PLP_TC003_Pages.robot

*** Keywords ***
Validate Color Filter Displays Correct Absorbencies On Click
    Element Should Be Visible     ${FilterButton}  
    Click Element    ${FilterButton}  
    Wait Until Element Is Visible  ${ColorFilter}  10s
    Element Should Be Visible     ${ColorFilter}
    Click Element            locator=${ColorFilter}
    Wait Until Element Is Visible  ${MultiFilter}  10s
    Wait Until Element Is Visible  ${BeigeFilter}  10s
    Wait Until Element Is Visible  ${RedFilter}  10s
    Wait Until Element Is Visible  ${BlueFilter}  10s
    Wait Until Element Is Visible  ${PinkFilter}  10s
    Wait Until Element Is Visible  ${GreyFilter}  10s
    Wait Until Element Is Visible  ${BlackFilter}  
    Element Should Be Visible  ${MultiFilter}
    Element Should Be Visible  ${BeigeFilter}
    Element Should Be Visible   ${RedFilter}
    Element Should Be Visible  ${BlueFilter}
    Element Should Be Visible  ${PinkFilter}
    Element Should Be Visible  ${GreyFilter}
    Element Should Be Visible  ${BlackFilter}  

Validate You Can Apply Multi Color Filter
    Wait Until Element Is Visible    ${MultiButton}
    Element Should Be Visible    ${MultiButton}
    Capture Element Screenshot   ${MultiButton}
    Click Element            ${MultiButton}
    Wait Until Element Is Visible    locator=${ApplyFiltersCTA}

Validate PLP Results When Multi Color Is Applied
    Wait Until Element Is Visible     ${FilterClose}
    Element Should Be Visible         ${FilterClose}
    Click Element            ${FilterClose}
    Wait Until Location Is    ${AppliedFilterURL}    10s
    Location Should Be     ${AppliedFilterURL} 
    Capture Page Screenshot    

Validate Product Display When Multi Color Filter Is Applied
    Wait Until Element Is Visible    ${FirstProduct}
    Element Should Be Visible    locator=${FirstProduct}
    Wait Until Element Is Visible    ${SecondProduct}
    Element Should Be Visible     locator=${SecondProduct}
    Capture Page Screenshot       

Validate You Can Quick Add Multi Color to Cart & Color Displays
    Mouse Over    ${FirstProduct}
    Wait Until Element Is Visible    locator=${QuickAddMulti}
    Click Element       ${QuickAddMulti}
    Sleep     5
    Wait Until Element Is Visible    ${CartColor}
    Element Should Be Visible    ${CartColor}

