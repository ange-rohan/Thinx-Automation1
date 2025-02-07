*** Settings ***
Library    SeleniumLibrary
Library    CustomKeywords.py
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Resource        ../../pages/CookieSettings/CookieSettings_TC005_Pages.robot

*** Keywords ***

Check Console For Load Events
    ${logs}=    Get Console Logs    ${URL}
    Log    ${logs}
    Should Contain    ${logs}    load:ppperjm

Confirm Video Module Is Loading
    Wait Until Element Is Visible    ${VideoModule}
    Element Should Be Visible    ${VideoModule}
    Element Should Be Enabled    ${VideoModule}

Navigate to PDPs & Confirm Reviews Load
    Wait Until Element Is Visible    ${SleepShortsProductCard}
    Scroll Element Into View    ${SleepShortsProductCard}
    Click Element    ${SleepShortsProductCard}
    Sleep    2
    Wait Until Element Is Visible    ${PDPYotpoWidget1}
    Element Should Be Visible    ${PDPYotpoWidget1}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${PDPYotpoJumplink}
    Scroll Element Into View    ${PDPYotpoJumplink}
    Click Element    ${PDPYotpoJumplink}
    Sleep    5
    Wait Until Element Is Visible    ${PDPYotpoWidget2}
    Element Should Be Visible    ${PDPYotpoWidget2}

Navigate to Quiz Page & Ensure Quiz Loads
    Execute JavaScript    window.scrollTo(0, 0)
    Wait Until Element Is Visible    ${TakeTheQuizCTA}
    Scroll Element Into View    ${TakeTheQuizCTA}
    Click Element    ${TakeTheQuizCTA}
    Sleep    2
    Wait Until Element Is Visible    ${QuizWidget}
    Element Should Be Visible    ${QuizWidget}
    Capture Page Screenshot

Navigate to Reviews Page & Ensure Reviews Load
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     Wait Until Element Is Visible    ${ReviewsLinkFooter}
     Scroll Element Into View    ${ReviewsLinkFooter}
     Click Element    ${ReviewsLinkFooter}
     Sleep    2
     Wait Until Element Is Visible    ${ReviewsPageWidget}
     Element Should Be Visible    ${ReviewsPageWidget}
     Capture Page Screenshot