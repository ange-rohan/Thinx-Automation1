*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/PLP/PLP_TC005_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot

*** Keywords ***
Validate the number of Products displayed on PLP page
    Execute Javascript    window.scrollTo(0,700)
    Sleep    5
    Wait Until Page Contains Element        ${NumberOfProducts}
    Element Should Be Visible        ${NumberOfProducts}
    ${NumberOfProductsDisplayed}=    Get Text    ${NumberOfProducts}
    Log    The Total number of Products displayed is: ${NumberOfProductsDisplayed}
    Capture Element Screenshot        ${NumberOfProducts}

    Wait Until Page Contains Element        ${ProdText}
    Element Should Be Visible        ${ProdText}
    ${ProductText}=    Get Text    ${ProdText}
    Log    The text: ${ProductText}
    Capture Element Screenshot        ${ProdText}
    Sleep    5

Validate Product Tile displayed in 2 column grid on PLP page
    Execute Javascript    window.scrollTo(0,1000)
    Sleep    5
    Wait Until Page Contains Element        ${Products}
    Element Should Be Visible        ${Products}
    Capture Page Screenshot
    Sleep    5

Validate Product Filter Section in left panel on PLP page
    Wait Until Page Contains Element        ${FilterSection}
    Element Should Be Visible        ${FilterSection}
    Capture Page Screenshot
    Sleep    5

Validate First Product in tile on PLP page
    Wait Until Page Contains Element        ${FirstProduct}
    Element Should Be Visible        ${FirstProduct}
    ${FirstProductName}=    Get Text    ${FirstProduct}
    Log    The First Product is: ${FirstProductName}
    Capture Element Screenshot        ${FirstProduct}
    Sleep    2

Validate Second Product in tile on PLP page
    Wait Until Page Contains Element        ${SecondProduct}
    Element Should Be Visible        ${SecondProduct}
    ${SecondProductName}=    Get Text    ${SecondProduct}
    Log    The Second Product is: ${SecondProductName}
    Capture Element Screenshot    ${SecondProduct}
    Sleep    5


