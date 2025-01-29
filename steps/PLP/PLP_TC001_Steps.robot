*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PLP/PLP_TC001_Pages.robot

*** Keywords ***
Close Email Modal
    Wait Until Element Is Visible  ${CloseModal}
    Element Should Be Visible    ${CloseModal}
    Click Element          ${CloseModal}

Validate Filter Menu Opens On Click
    Element Should Be Visible     ${FilterButton}  
    Click Element    ${FilterButton}  
    Element Should Be Visible     ${FilterMenu}
    Capture Element Screenshot    ${FilterMenu}

Validate Filter Menu Contains All Correct Filter Menu Options
    Wait Until Element Is Visible  ${AbsorbencyFilter}  10s
    Wait Until Element Is Visible  ${StyleFilter}  10s
    Wait Until Element Is Visible  ${BestForFilter}  10s
    Wait Until Element Is Visible  ${CollectionFilter}  10s
    Wait Until Element Is Visible  ${ColorFilter}  10s
    Wait Until Element Is Visible  ${SizeFilter}  10s
    Element Should Be Visible  ${AbsorbencyFilter} 
    Element Should Be Visible  ${StyleFilter}
    Element Should Be Visible  ${BestForFilter}
    Element Should Be Visible  ${CollectionFilter} 
    Element Should Be Visible  ${SizeFilter} 

Validate Filter Menu Displays Apply Filters Button
    Wait Until Element Is Visible  ${ApplyFiltersCTA}
    Element Should Be Visible       ${ApplyFiltersCTA}   

Validate Filter Menu Closes On Click 
    Wait Until Element Is Visible    ${FilterClose}
    Element Should Be Visible    ${FilterClose}
    Click Element                ${FilterClose}

