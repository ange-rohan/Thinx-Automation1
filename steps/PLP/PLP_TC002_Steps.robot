*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PLP/PLP_TC002_Pages.robot

*** Keywords ***
Validate Absorbency Filter Displays Correct Absorbencies On Click
    Element Should Be Visible     ${FilterButton}  
    Click Element    ${FilterButton}  
    Wait Until Element Is Visible  ${AbsorbencyFilter}  10s
    Element Should Be Visible     ${AbsorbencyFilter}
    Click Element            locator=${AbsorbencyFilter}
    Wait Until Element Is Visible  ${AllNightFilter}  10s
    Wait Until Element Is Visible  ${AllDayFilter}  10s
    Wait Until Element Is Visible  ${SuperFilter}  10s
    Wait Until Element Is Visible  ${HeavyFilter}  10s
    Wait Until Element Is Visible  ${ModerateFilter}  10s
    Wait Until Element Is Visible  ${LightFilter}  10s
    Wait Until Element Is Visible  ${VeryLightFilter}  
    Wait Until Element Is Visible  ${LightestFilter}  
    Element Should Be Visible  ${AllNightFilter} 
    Element Should Be Visible  ${AllDayFilter} 
    Element Should Be Visible  ${SuperFilter}
    Element Should Be Visible  ${HeavyFilter}
    Element Should Be Visible  ${ModerateFilter}
    Element Should Be Visible  ${LightFilter}
    Element Should Be Visible   ${VeryLightFilter}
    Element Should Be Visible   ${LightestFilter}

Validate You Can Apply All Day Absorbency Filter
    Wait Until Element Is Visible    ${AllNightButton}
    Click Element            locator=${AllNightButton}
    Wait Until Element Is Visible    locator=${ApplyFiltersCTA}

Validate PLP Results When All Day Absorbency Is Applied
    Wait Until Element Is Visible     ${FilterClose}
    Element Should Be Visible         ${FilterClose}
    Click Element            ${FilterClose}
    Wait Until Location Is    ${AppliedFilterURL}    10s
    Location Should Be     ${AppliedFilterURL} 
    Capture Page Screenshot    

Validate Product Display When All Day Absorbency Is Applied
    Wait Until Element Is Visible    ${FirstProduct}
    Element Should Be Visible    locator=${FirstProduct}
    Wait Until Element Is Visible    ${SecondProduct}
    Element Should Be Visible     locator=${SecondProduct}
    Click Element    locator=${SecondProduct}  
    Wait Until Location Is    ${SecondProductURL}    10s
    Location Should Be      ${SecondProductURL}  
    Capture Page Screenshot       




 


