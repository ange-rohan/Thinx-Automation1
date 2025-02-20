*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC002_Pages.robot

*** Keywords ***

Click 1st Set of Footer Links & Ensure They Direct to Correct Pages
    Execute JavaScript  document.getElementById ${CustomerServiceHeader}.scrollIntoView();
    Sleep    2
    Set Focus To Element    ${CustomerServiceHeader}
    Wait Until Element Is Visible    ${CustomerServiceHeader}
    Element Should Be Visible    ${CustomerServiceHeader}
    Set Focus To Element    ${Orders&PaymentHeader}
    Wait Until Element Is Visible   ${Orders&PaymentHeader}
    Element Should Be Visible    ${Orders&PaymentHeader}
    Set Focus To Element    ${OurCompanyHeader}
    Wait Until Element Is Visible   ${OurCompanyHeader}
    Element Should Be Visible     ${OurCompanyHeader}


Validate Currency Selector Is Visible
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View    ${CurrencySelector}
    Wait Until Element Is Visible    ${CurrencySelector}

Validate Social Link Icons Section Present on Footer Section
    Scroll Element Into View    ${SocialLinkIconsSection}
    Wait Until Element Is Visible    ${SocialLinkIconsSection}
    Element Should Be Visible    ${SocialLinkIconsSection}



    