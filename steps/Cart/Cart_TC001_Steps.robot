*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot

*** Keywords ***
Click Cart Icon & Open Cart
    Scroll Element Into View     locator=${Cart}
    Element Should Be Visible    ${Cart}
    Click Element    ${Cart}
    Sleep    5

Validate Empty Cart Elements & Content
    Wait Until Element Is Visible     ${CartHeading}
       ${CartHeading}=    Get Text    ${CartHeading}
    Should Contain   ${CartHeading}    My Bag (0)
    Wait Until Element Is Visible    ${CustomSetDiscountCallout}
    Element Should Be Visible    ${CustomSetDiscountCallout}
    Wait Until Element Is Visible    ${EmptyBagText}
       ${EmptyBagText}=    Get Text    ${EmptyBagText}
    Should Contain   ${EmptyBagText}   Looks like your bag is empty!
    Wait Until Element Is Visible    ${StartShoppingCTA}
    Element Should Be Visible    ${StartShoppingCTA}
    Wait Until Element Is Visible    ${YouMayAlsoLikeHeading}
    Element Should Be Visible    ${YouMayAlsoLikeHeading}
    Wait Until Element Is Visible    ${ProductCarouselCart}
    Element Should Be Visible    ${ProductCarouselCart}
    Scroll Element Into View    ${StartShoppingCTA}
    Click Element    ${StartShoppingCTA}
    Sleep    5
    Location Should Be     ${StartShoppingLink}

Close Cart
    Wait Until Element Is Visible     ${Cart}
    Scroll Element Into View    ${Cart}
    Click Element    ${Cart}
    Sleep    5
    Wait Until Element Is Visible    ${CartCloseButton}
    Scroll Element Into View    ${CartCloseButton}
    Click Element    ${CartCloseButton}
