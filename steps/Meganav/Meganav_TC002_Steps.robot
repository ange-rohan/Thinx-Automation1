*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Meganav/Meganav_TC002_Pages.robot

*** Keywords ***


Validate Meganav Displays
    Wait Until Element Is Visible    ${PeriodNav}     10s
    Mouse Over    ${PeriodNav}
    Wait Until Element Is Visible    ${PeriodSubMenu}     10s

Validate Shop All Nav Directs to Right Page
    Click Element    ${ShopAllNav}
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop all
    Wait Until Location Is    ${ShopAllURL}    10s
    Location Should Be     ${ShopAllURL} 

Validate Period Nav Directs to Right Page
    Click Element    ${PeriodNav}
    Wait Until Location Is    ${PeriodURL}    10s
    Location Should Be      ${PeriodURL} 
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop period

Validate Bladder Nav Directs to Right Page
    Click Element    ${BladderNav}
    Wait Until Location Is    ${BladderURL}    10s
    Location Should Be      ${BladderURL} 
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop all bladder

Validate Teens Nav Directs to Right Page
    Click Element    ${TeensNav}
    Wait Until Location Is    ${TeensURL}    10s
    Location Should Be      ${TeensURL} 
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop all Thinx Teens


Validate Sets Nav Directs to Right Page
    Click Element    ${SetsNav}
    Wait Until Location Is    ${SetsURL}    10s
    Location Should Be      ${SetsURL}
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop sets



Validate Last Call Nav Directs to Right Page
    Click Element    ${LastCallNav}
    Wait Until Location Is    ${LastCallURL}    10s
    Location Should Be      ${LastCallURL} 
    Wait Until Element Is Visible     ${H1}
       ${h1_text}=    Get Text    ${H1}
    Should Contain    ${h1_text}    shop last call


Validate Take Quiz Nav Directs to Right Page
    Click Element    ${TakeTheQuizCTA}
    Wait Until Location Is    ${QuizURL}    10s
    Location Should Be      ${QuizURL} 

Validate Learn Nav Directs to Right Page
    Click Element    ${LearnNav}
    Wait Until Location Is    ${HowWorksURL}    10s
    Location Should Be      ${HowWorksURL}
    Wait Until Element Is Visible     ${LearnH1}
       ${h1_text}=    Get Text    ${LearnH1}
    Should Contain    ${h1_text}     how our period underwear works


Validate Sign In Nav Directs to Right Page
    Click Element    ${SignInNav}
    Wait Until Location Is    ${SignInURL}    10s
    Location Should Be      ${SignInURL}  
    Wait Until Element Is Visible     ${SignInH1}
       ${h1_text}=    Get Text    ${SignInH1}
    Should Contain    ${h1_text}     Login

Validate Cart Nav Directs to Right Page
    Click Element    ${Cart}
    Wait Until Element Is Visible     ${CartSlideOut}