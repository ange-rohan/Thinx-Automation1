*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC002_Pages.robot

*** Keywords ***

Click 1st Set of Footer Links & Ensure They Direct to Correct Pages
    Scroll Element Into View    ${FAQs}
    Wait Until Element Is Visible    ${FAQs}
    Click Element    ${FAQs}
    Sleep    5
    Location Should Be    ${FAQsURL}
    Wait Until Element Is Visible     ${H1}
        ${H1}=    Get Text     ${H1}
    Should Contain     ${H1}    frequently asked questions
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View    ${Reviews}
    Wait Until Element Is Visible    ${Reviews}
    Click Element    ${Reviews}
    Sleep    5
    Location Should Be    ${ReviewsURL}



Validate Currency Selector Is Visible
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View    ${CurrencySelector}
    Wait Until Element Is Visible    ${CurrencySelector}

Validate Social Link Icons Section Present on Footer Section
    Scroll Element Into View    ${SocialLinkIconsSection}
    Wait Until Element Is Visible    ${SocialLinkIconsSection}
    Wait Until Element Is Visible    ${SocialLinkIcons}
    Element Should Be Visible    ${SocialLinkIcons}



    