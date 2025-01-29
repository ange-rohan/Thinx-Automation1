*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***
${SmartCommError}        //div[@class='cookie-error-warning']
${ReviewThisProd}        //div[@class='bv_rating_content3 disabled-block']
${CloseCTAProdReview}  
${SurveyGizmoError}        //div[@class='warning-description']

*** Keywords ***
Validate all the sub cookies under marketing cookie are set to off
	Wait Until Element Is Visible       ${MarketingCookies}
	Element Should Be Visible       ${MarketingCookies}
	Click Element       ${MarketingCookies}
	Scroll Element Into View        ${SurveyGizmo}
	Capture Page Screenshot
	Scroll Element Into View        ${SmartCommerce}
	Capture Page Screenshot
	Scroll Element Into View        ${BriteVerify}
	Capture Page Screenshot
	Scroll Element Into View        ${FullStory}
	Capture Page Screenshot

    Wait Until Element Is Visible       ${SaveCTA}
    Element Should Be Visible       ${SaveCTA}
    Click Element       ${SaveCTA}

Validate smart commerce error message
    Execute Javascript    window.scrollTo(0,1600)
    Sleep    5
    Wait Until Page Contains Element        ${SmartCommError}
    Capture Page Screenshot
    ${SmartCommErrorMsg}=    Get Text    ${SmartCommError}
    Log     Smart commerce message displayed as: ${SmartCommErrorMsg}

Validate review this product should be disabled from product review section
    Wait Until Page Contains Element        ${ReviewThisProd}
    Element Attribute Value Should Be        ${ReviewThisProd}        class        bv_rating_content3 disabled-block
    Capture Page Screenshot
    Sleep    10
    Execute Javascript    window.scrollTo(0,10)
    
Close product review section
    Wait Until Page Contains Element        ${CloseCTAProdReview}
    Element Should Be Visible        ${CloseCTAProdReview}  
    
Validate survey gizmo error message in more about me section
    Wait Until Page Contains Element        ${SurveyGizmoError}   
    Element Should Be Visible        ${SurveyGizmoError}
    Sleep    5
    Capture Page Screenshot
    ${SurveyGizmoErrorMsg} =    Get Text    ${SurveyGizmoError} 
    Log    The survey gizmo error message displayed as: ${SurveyGizmoErrorMsg}
    


       
    