*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LanguageSection}       //div[@class='bottom-container row']//*[@class='dropdown custom-dropdown']
${FirstLanguage}        (//div[@class='bottom-container row']//*[@class='dropdown custom-dropdown']/div/a)[1]
${SecondLanguage}        (//div[@class='bottom-container row']//*[@class='dropdown custom-dropdown']/div/a)[2]
${ThirdLanguage}        (//div[@class='bottom-container row']//*[@class='dropdown custom-dropdown']/div/a)[3]
${CopyrightStatementLink}        //*[@class='logo external']/a
${KCLogo}        //*[@class='navbar-brand']/img