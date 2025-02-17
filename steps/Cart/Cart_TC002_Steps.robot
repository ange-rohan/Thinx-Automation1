*** Settings ***
Library     SeleniumLibrary
Resource          ../../pages/Cart/Cart_TC001_Pages.robot
Resource          ../../pages/Cart/Cart_TC002_Pages.robot
Resource          ../../pages/PDP/PDP_TC004_Pages.robot

*** Keywords ***

Remove All Items From Cart
    Wait Until Element Is Visible    ${RemoveItem}
    Scroll Element Into View    ${RemoveItem}
    Click Element    ${RemoveItem}



    
