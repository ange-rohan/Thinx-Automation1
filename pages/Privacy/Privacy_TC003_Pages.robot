*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Privacy/Privacy_TC002_Pages.robot

*** Variables ***
${CancelCTAPrivacy}        //button[@id='privacy-section-cancel']

*** Keywords ***
Click on cancel CTA of privacy section
    Execute Javascript    window.scrollTo(0,1000)
    Wait Until Page Contains Element        ${CancelCTAPrivacy}
    Element Should Be Visible        ${CancelCTAPrivacy}
    Click Button    ${CancelCTAPrivacy}
    Sleep    5
    
Validate changes reverted after clicking on cancel CTA on privacy section
    Element Attribute Value Should Be       ${UpdateProfilePrivacy}        class        consumer-profile-button g-recaptcha
    Capture Page Screenshot


