*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Checkout/Checkout_TC001_Pages.robot
Resource          ../../pages/Checkout/Checkout_TC002_Pages.robot

*** Variables ***
${Fname}            Test
${Lname}            Tweet
${CheckoutEmail}    testpurchase1@yopmail.com
${StreetAddress}    277 Gedney Hill Road
${City}             Coeymans Hollow
${ZipCode}          12046
${Phone}            6317930513

*** Keywords ***


Enter New Account Email on Checkout
	[Arguments]                       ${CheckoutEmail}
    Sleep    5
    Scroll Element Into View    locator=${ContactEmail} 
    Wait Until Element Is Visible     ${ContactEmail}   timeout=10s
    Wait Until Element Is Enabled     ${ContactEmail}        10
    Input Text                       ${ContactEmail}        ${CheckoutEmail}

Enter First Name on Checkout
	 [Arguments]                       ${FName}
	Sleep    5
    Wait Until Element Is Enabled    ${FirstName}         5
	Scroll Element Into View    locator=${Firstname}
    Input Text                         ${Firstname}        ${FName}

Enter Last Name on Checkout
	[Arguments]                       ${LName}
    Sleep    5
    Scroll Element Into View    locator=${Lastname}
    Wait Until Element Is Visible      ${Lastname}  timeout=10s
    Wait Until Element Is Enabled     ${Lastname}          10
    Input Text                       ${Lastname}        ${LName}

Enter Street Address on Checkout 
	[Arguments]                       ${StreetAddress}
    Sleep    5
    Scroll Element Into View    locator=${AddressLine1}
    Wait Until Element Is Visible     ${AddressLine1}  timeout=10s
    Wait Until Element Is Enabled     ${AddressLine1}        10
    Input Text                      ${AddressLine1}        ${StreetAddress}
    Sleep    5
    Wait Until Element Is Visible    ${AddressDropdown}
    Scroll Element Into View    ${AddressDropdown}
    Click Element    ${AddressDropdown}


Validate Shipping Method
    Execute Javascript    window.scrollTo(0,7000)
    Wait Until Element Is Visible    ${StandardShipping}
    Element Should Be Visible    ${StandardShipping}
    Wait Until Element Is Visible    ${StandardShippingPrice}
    Element Should Be Visible    ${StandardShippingPrice}
    Wait Until Element Is Visible    ${PriorityShipping}
    Element Should Be Visible    ${PriorityShipping}
    Wait Until Element Is Visible    ${PriorityShippingPrice}
    Element Should Be Visible    ${PriorityShippingPrice}

Validate Payment Information
    Scroll Element Into View    ${PaymentOptionsCC}
    Element Should Be Visible    ${PaymentOptionsCC}


Validate Terms & Pay Now Section
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View    ${PayNowCTA}
    Wait Until Element Is Visible    ${PayNowCTA}
    Element Should Be Visible    ${PayNowCTA}