*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Cart/Cart_TC002_Pages.robot
Resource          ../../pages/PDP/PDP_TC004_Pages.robot
Resource          ../../pages/Cart/Cart_TC003_Pages.robot

*** Keywords ***

Increase Quantity In Cart
    Wait Until Element Is Visible    ${AddQuantitycart}  
    Scroll Element Into View    ${AddQuantitycart}  
    Click Element   ${AddQuantitycart}  

Validate Cart Count Once Added
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Add 1 more eligible product to get 10% off!

Decrease Quantity In Cart
    Wait Until Element Is Visible    ${RemoveQuantitycart} 
    Scroll Element Into View    ${RemoveQuantitycart} 
    Click Element   ${RemoveQuantitycart} 

Validate Cart Count Once Removed
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Add 2 more eligible products to get 10% off!