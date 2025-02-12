*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PDP/PDP_TC003_Pages.robot
Suite Setup      Set Selenium Timeout  10s


*** Keywords ***
Validate You Can Increase Quantity on PDP 
    Sleep    5
    Wait Until Page Contains Element       ${QuantitySelector}      
    Element Should Be Visible        ${QuantitySelector}  
    Element Should Be Visible        ${AddQuantity} 
    Click Element                    ${AddQuantity} 
    Sleep    5
    Wait Until Page Contains Element        ${AddtoBagCTA}
    Element Should Be Visible            ${AddtoBagCTA}
    Click Element                        ${AddtoBagCTA}
    Capture Page Screenshot


Validate Cart Count on Add to Cart
    Wait Until Page Contains Element        ${CartTotal}
    Sleep    5
    Element Text Should Be            ${CartTotal}     ${Expected_Text_Cart_Total}
    Go Back

Validate You Can Type In Quantity Selector to Add to Cart
    Wait Until Page Contains Element    ${PDPH1}
    Capture Page Screenshot
    Wait Until Page Contains Element       ${QuantitySelector}      
    Element Should Be Visible        ${QuantitySelector}
    Input Text  id:quantity  3
    Element Should Be Visible            ${AddtoBagCTA}
    Click Element                        ${AddtoBagCTA}
    Capture Page Screenshot
    Wait Until Page Contains Element        ${CartTotal2} 
    Element Text Should Be            ${CartTotal2}      ${Expected_Text_Cart_Total_2}
