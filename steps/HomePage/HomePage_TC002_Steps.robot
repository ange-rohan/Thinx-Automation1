*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/HomePage/HomePage_TC002_Pages.robot

*** Keywords ***
Validate and capture the Brand Logo
    Wait Until Page Contains Element        ${BrandLogo}    
    Element Should Be Visible        ${BrandLogo}    
    Capture Element Screenshot        ${BrandLogo}
    Capture Page Screenshot    

Validate the Hero H1 Text
    Wait Until Element Is Visible    ${HeroH1}    10s
    Element Text Should Be    ${HeroH1}   ${EXPECTED_TEXT_1}

Validate the Hero CTA Text
    Wait Until Element Is Visible    ${HeroCTA}    10s
    Element Text Should Be    ${HeroCTA}   ${EXPECTED_TEXT_2}
  