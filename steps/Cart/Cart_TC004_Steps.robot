*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Cart/Cart_TC002_Pages.robot
Resource          ../../pages/PDP/PDP_TC004_Pages.robot
Resource          ../../pages/Cart/Cart_TC003_Pages.robot
Resource          ../../pages/Cart/Cart_TC004_Pages.robot

*** Keywords ***
Validate You Can Type In Quantity Selector to Add to Cart
    Scroll Element Into View    ${QuantityInput}
    Wait Until Page Contains Element       ${QuantityInput}     
    Element Should Be Visible        ${QuantityInput}
    Input Text  id:quantity  7
    Scroll Element Into View    locator=${AddtoBagCTA}
    Element Should Be Visible            ${AddtoBagCTA}
    Click Element                        ${AddtoBagCTA}
    

Validate Cart Custom Set Discount Messaging on Add
    Sleep    5
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Congratulations! You’ve unlocked 20% off!


Validate Custom Set Discount Messaging Updates
    Sleep    5
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Add 1 more eligible product to get 20% off!

Validate Custom Set Discount Messaging Updates to 20% off
    Sleep    5
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Add 2 more eligible products to get 20% off!


Validate Custom Set Discount Messaging Updates to 15% off
    Sleep    5
    Scroll Element Into View    ${CustomSetDiscountText}
    Wait Until Element Is Visible  ${CustomSetDiscountText}
      ${CustomSetDiscountText}=    Get Text   ${CustomSetDiscountText}
    Should Contain    ${CustomSetDiscountText}    Add 1 more eligible product to get 15% off!