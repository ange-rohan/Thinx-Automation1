*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Cart/Cart_TC002_Pages.robot

*** Keywords ***

Add Upsell Item to Cart
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    ${CartUpsellQuickAdd}
    Scroll Element Into View    locator=${CartUpsellQuickAdd}
    Click Element    ${CartUpsellQuickAdd}
    Capture Page Screenshot
    Wait Until Element Is Visible    id=${SizeSelectorCart} 
    ${SizeSelectorCart} =    Get WebElement    id=${SizeSelectorCart} 
    Execute JavaScript    arguments[0].scrollIntoView(true);   ${SizeSelectorCart} 
    Click Element    ${SizeSelectorCart}

Validate Upsell Item Added
    Sleep    2
    Wait Until Element Is Visible    ${CartItemAdded}
    Element Should Be Visible    ${CartItemAdded}
    Capture Page Screenshot


Add 3 of Item to Activate Custom Set Discount
    Wait Until Element Is Visible    ${QuantityInput}
    Scroll Element Into View    ${QuantityInput}
    Input Text  id:quantity  3
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



    
