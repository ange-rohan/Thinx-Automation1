*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Meganav/Meganav_TC001_Pages.robot

*** Keywords ***

Validate Meganav Displays
    Wait Until Page Contains Element     ${Meganav} 
    Element Should Be Visible            ${Meganav} 
    Capture Element Screenshot           ${Meganav}
   
Validate Scrolling Promo Banner Displays
    Wait Until Page Contains Element     ${PromoBanner}
    Element Should Be Visible            ${PromoBanner}

Validate Menu Items Display 
    Wait Until Page Contains Element     ${ShopAllNav} 
    Element Should Be Visible            ${ShopAllNav} 
    Wait Until Page Contains Element     ${PeriodNav}   
    Element Should Be Visible            ${PeriodNav}  
    Wait Until Page Contains Element     ${BladderNav}   
    Element Should Be Visible            ${BladderNav}   
    Wait Until Page Contains Element     ${TeensNav}   
    Element Should Be Visible            ${TeensNav} 
    Wait Until Page Contains Element     ${SetsNav}   
    Element Should Be Visible            ${SetsNav}   
    Wait Until Page Contains Element     ${LastCallNav}   
    Element Should Be Visible            ${LastCallNav}                 

Validate Utility Nav Items Display
    Wait Until Page Contains Element     ${TakeTheQuizCTA}   
    Element Should Be Visible            ${TakeTheQuizCTA}  
    Wait Until Page Contains Element     ${LearnNav}   
    Element Should Be Visible            ${LearnNav} 
    Wait Until Page Contains Element     ${SignInNav}   
    Element Should Be Visible            ${SignInNav}    
    Wait Until Page Contains Element     ${Cart}   
    Element Should Be Visible            ${Cart}    



