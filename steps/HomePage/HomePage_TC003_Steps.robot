*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/HomePage/HomePage_TC003_Pages.robot

*** Keywords ***

Validate Homepage Carousel Section
    Execute Javascript    window.scrollTo(0,2700)
    Sleep    5
    Wait Until Page Contains Element     ${CarouselSection}
    Element Should Be Visible            ${CarouselSection}    


Validate Navigation to PDP on Click
   Scroll Element Into View    ${PDP Link}
    Wait Until Element Is Visible     ${PDP Link}  10s
    Click Element    ${PDP Link}
    Sleep    5
    ${actual_h1}=    Get Text    xpath=//h1
    Should Be Equal    ${actual_h1}    ${Expected_H1}
    Go Back
    Close Browser    


    
    