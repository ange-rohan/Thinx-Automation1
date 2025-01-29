*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/HomePage/HomePage_TC001_Pages.robot

*** Keywords ***


Validate Hero Section Displays
    Element Should Be Visible       ${HeroSection}     
    Capture Element Screenshot      ${HeroSection}  
    Element Should Be Visible       ${HeroH1}     
    Element Should Be Visible       ${HeroCTA}   

Validate Remaining Homepage Sections Visible
    Element Should Be Visible        ${CollecionsListing}    
    Element Should Be Visible        ${3IconSection}   
    Element Should Be Visible        ${VideoSection}    
    Sleep    5
    

Validate Homepage Carousel Section
    Execute Javascript    window.scrollTo(0,2700)
    Sleep    5
    Wait Until Page Contains Element     ${CarouselSection}
    Element Should Be Visible            ${CarouselSection}    
    Capture Element Screenshot            ${CarouselSection}
   
Validate Next Arrow Carousel on homepage
    Element Should Be Visible        ${NextArrowCarousel}    
    
    
Validate the content block during the transition of Carousel
    Wait Until Page Contains Element        ${ImgCarousel}    
    Element Should Be Visible         ${ImgCarousel}       
    
 Validate the Remaining Page Elements Are Visible
    Wait Until Page Contains Element        ${ReviewsSection}  
    Element Should Be Visible             ${ReviewsSection}
    Wait Until Page Contains Element       ${GetBodywiseSection} 
    Element Should Be Visible             ${GetBodywiseSection} 