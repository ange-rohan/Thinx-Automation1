*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC003_Pages.robot
Resource          ../../steps/SiteMap/SiteMap_TC001_Steps.robot

*** Keywords ***
Validate SiteMap Link is present on Footer Section
    Execute Javascript    window.scrollTo(0,5000)
    Sleep    5
    Wait Until Page Contains Element        ${SiteMap}    
    Element Should Be Visible        ${SiteMap}     
    ${SiteMapLink}=     Get Text        ${SiteMap}     
    Log        ${SiteMapLink}
    Capture Page Screenshot    
    Capture Element Screenshot        ${SiteMap}
    
Validate Language Dropdown present on Footer Section
    Wait Until Page Contains Element        ${LanguageSection}    
    Element Should Be Visible        ${LanguageSection}     
    ${LanguageSectionText}=    Get Text        ${LanguageSection}     
    Log        ${LanguageSectionText}
    Capture Element Screenshot        ${LanguageSection}
 
Click on Language Dropdown
    Element Should Be Visible        ${LanguageSection}    
    Click Element        ${LanguageSection}
    Sleep    2 
       
Click on First Language from dropdown and validate the page
    Wait Until Page Contains Element        ${FirstLanguage}    
    Element Should Be Visible        ${FirstLanguage} 
    Click Element        ${FirstLanguage}
    Sleep    2
    Capture Page Screenshot
    Sleep    3
    Execute Javascript    window.history.back()
    Sleep    3

Click on Second Language from dropdown and validate the page
    Click on Language Dropdown
    Wait Until Page Contains Element        ${SecondLanguage}
    Element Should Be Visible        ${SecondLanguage}
    Click Element        ${SecondLanguage}
    Sleep    2
    Capture Page Screenshot
    Sleep    3
    Execute Javascript    window.history.back()
    Sleep    3

Click on Third Language from dropdown and validate the page
    Click on Language Dropdown
    Wait Until Page Contains Element        ${ThirdLanguage}
    Element Should Be Visible        ${ThirdLanguage}
    Click Element        ${ThirdLanguage}
    Sleep    2
    Capture Page Screenshot
    Sleep    3
    Execute Javascript    window.history.back()
    Sleep    3
    
Validate Copyright Statement Link is present on Footer Section
    Execute Javascript    window.scrollTo(0,5000)
    Sleep    5
    Wait Until Page Contains Element        ${CopyrightStatementLink}    
    Element Should Be Visible        ${CopyrightStatementLink}
    Capture Element Screenshot        ${CopyrightStatementLink}

Click on Copyright Statement Link
    Click Element        ${CopyrightStatementLink}
    Sleep    5

Validate Copyright Statement Page
    Wait Until Page Contains Element        ${KCLogo}
    Element Should Be Visible        ${KCLogo}
    Capture Element Screenshot        ${KCLogo}
    Capture Page Screenshot