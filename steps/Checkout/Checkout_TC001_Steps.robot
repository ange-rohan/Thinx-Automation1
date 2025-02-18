*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Checkout/Checkout_TC001_Pages.robot



*** Keywords ***

Navigate From Cart to Checkout
    Sleep    5
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View    ${CheckoutCTA}
    Wait Until Element Is Visible    ${CheckoutCTA}
    Click Element    ${CheckoutCTA}

Validate Checkout Displays Correct Information
    Sleep    5
    ${url}=    Get Location
    Should Contain    ${url}   https://www.thinx.com/checkouts/
    Capture Page Screenshot
    Wait Until Element Is Visible    ${ShopPay}
    Element Should Be Visible    ${ShopPay}
    Wait Until Element Is Visible     ${GPay}
    Element Should Be Visible   ${GPay}
    Wait Until Element Is Visible     ${ThinxLogo}
    Element Should Be Visible   ${ThinxLogo}   
    Wait Until Element Is Visible     ${CartLink}
    Element Should Be Visible   ${CartLink}   
    Wait Until Element Is Visible    ${ContactEmail}
    Element Should Be Visible    ${ContactEmail}
    Wait Until Element Is Visible    ${LegalSignupText}
    Element Should Be Visible   ${LegalSignupText}
    Wait Until Element Is Visible    ${FirstName}
    Element Should Be Visible   ${FirstName}
    Wait Until Element Is Visible    ${LastName}
    Element Should Be Visible   ${LastName}
    Wait Until Element Is Visible    ${DiscountField}
    Element Should Be Visible   ${DiscountField}
    Wait Until Element Is Visible    ${ShippingText}
    Element Should Be Visible    ${ShippingText}
    Wait Until Element Is Visible    ${ShippingEnterText}
    Element Should Be Visible    ${ShippingEnterText}
    Wait Until Element Is Visible    ${TotalText}
    Element Should Be Visible    ${TotalText}


