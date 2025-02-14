*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Cart/Cart_TC002_Pages.robot

*** Keywords ***



Add 3 of Item to Activate Custom Set Discount
    Wait Until Element Is Visible    ${QuantityInput}
    Scroll Element Into View    ${QuantityInput}
    Input Text   ${QuantityInput}  3
    Capture Page Screenshot
    Sleep    2
    Wait Until Element Is Visible    ${CustomSetDiscountText}
    Wait Until Element Is Visible     ${CustomSetDiscountText}
        ${CustomSetDiscountText}=    Get Text    ${CustomSetDiscountText}
    Should Contain     ${CustomSetDiscountText}    Add 2 more eligible products to get 15% off!
    Wait Until Element Is Visible    ${TotalSavingsText}
    Element Should Be Visible    ${TotalSavingsText}

Remove All Items From Cart
    Wait Until Element Is Visible    ${RemoveItem}
    Scroll Element Into View    ${RemoveItem}
    Click Element    ${RemoveItem}



    
