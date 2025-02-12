*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PDP/PDP_TC001_Pages.robot

*** Keywords ***
Check Top of PDP Is Visible
    Wait Until Element Is Visible    ${Breadcrumbs}
	Element Should Be Visible    ${Breadcrumbs}
    Element Should Be Visible    ${BrandEyebrow} 
    Wait Until Element Is Visible     ${PDPH1}
    Element Text Should Be            ${PDPH1}     ${Expected_Text2}
    Wait Until Element Is Visible     ${PDPPrice}
    Element Should Be Visible        ${PDPPrice}
	Sleep    5

Validate PDP Details Are Visible
    Sleep    5
     Wait Until Page Contains Element      ${ReviewsJumplinks} 
     Element Should Be Visible            ${ReviewsJumplinks} 


     Wait Until Page Contains Element       ${ColorSwatch} 


     Wait Until Page Contains Element        ${ColorSwatch} 
     Capture Element Screenshot            ${ColorSwatch} 

Validate Remaining Layout of PDP
     Execute Javascript    window.scrollTo(0,2000)
     Sleep    5
    Wait Until Page Contains Element        ${ProductRecommendations}
    Element Should Be Visible               ${ProductRecommendations}

    Wait Until Page Contains Element        ${FAQsSection} 
    Element Should Be Visible               ${FAQsSection} 

    Execute Javascript    window.scrollTo(0,2500)
    Sleep    3
    Wait Until Page Contains Element       ${FinalReviewsSection} 
    Element Should Be Visible        ${FinalReviewsSection} 
    Capture Element Screenshot      ${FinalReviewsSection} 
