*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC001_Pages.robot

*** Keywords ***
Scroll to the Footer Section
    Execute Javascript    window.scrollTo(0,2000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,3000)
    Sleep    5
    Execute Javascript    window.scrollTo(0,4500)
    Sleep    5
    
Validate and capture the Site logo
    Wait Until Page Contains Element        ${SiteLogo}    
    Element Should Be Visible        ${SiteLogo}    
    Capture Element Screenshot        ${SiteLogo}
    Capture Page Screenshot

Capture the Global Main Footer Section
    Element Should Be Visible        ${GlobalMainFooterSection}    
    Capture Element Screenshot        ${GlobalMainFooterSection}


