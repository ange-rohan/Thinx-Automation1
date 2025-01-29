*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CaliforniaRightsLink}        //*[contains(text(),'California Privacy')]
${Heading1CaliforniaPrivacy}        //div[@id='castatement']//h1
${Heading2CaliforniaPrivacy}        //div[@id='castatement']//h2