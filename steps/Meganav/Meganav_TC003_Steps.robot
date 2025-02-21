*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Meganav/Meganav_TC003_Pages.robot


*** Variables ***
${MOBILE_WIDTH}    375
${MOBILE_HEIGHT}   667

*** Keywords ***


Resize to Mobile Breakpoints & Open Mobile Menu
    Set Window Size    ${MOBILE_WIDTH}    ${MOBILE_HEIGHT}
    Sleep    5
    Wait Until Element Is Visible    ${HamburgerMenu}
    Set Focus To Element    ${HamburgerMenu}
    Click Element    ${HamburgerMenu}
    Sleep    2

Validate Mobile Menu Options - High Level Elements
    Wait Until Element Is Visible    ${MobileMenuLogo}
    Element Should Be Visible    ${MobileMenuLogo}
    Wait Until Element Is Visible    ${MobileMenuX}
    Element Should Be Visible    ${MobileMenuX}    
    Wait Until Element Is Visible    ${MobileCartMenu}
    Element Should Be Visible    ${MobileCartMenu} 

Validate Mobile Menu Options - Navigation Elements
    Wait Until Element Is Visible    ${MobileShopAll}
    Element Should Be Visible    ${MobileShopAll}
    Wait Until Element Is Visible    ${MobilePeriodNav}
    Element Should Be Visible    ${MobilePeriodNav}
    Wait Until Element Is Visible    ${MobileBladderNav}
    Element Should Be Visible    ${MobileBladderNav}
    Wait Until Element Is Visible    ${MobileTeensNav}
    Element Should Be Visible    ${MobileTeensNav}
    Capture Page Screenshot

Close Mobile Menu
    Wait Until Element Is Visible    ${MobileMenuX}
    Set Focus To Element    ${MobileMenuX}
    Click Element    ${MobileMenuX}
