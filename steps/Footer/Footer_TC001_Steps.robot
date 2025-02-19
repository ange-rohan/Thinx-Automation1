*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC001_Pages.robot

*** Keywords ***
Scroll to the Footer Section
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5


Capture the Global Main Footer Section
    Element Should Be Visible        ${GlobalMainFooterSection}    
    Capture Element Screenshot        ${GlobalMainFooterSection}


