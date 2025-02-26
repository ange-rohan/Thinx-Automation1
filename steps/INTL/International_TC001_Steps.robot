*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC003_Pages.robot
Resource          ../../pages/Footer/Footer_TC002_Pages.robot
Resource          ../../pages/INTL/International_TC001_Pages.robot


*** Keywords ***

Confirm Currencies for Group 1
    Scroll Element Into View    ${CurrencySelector}
    Wait Until Element Is Visible    ${CurrencySelector}
    Click Element    ${CurrencySelector}
    Wait Until Element Is Visible    ${CurrencyList1}
    Element Should Be Visible    ${CurrencyList1}
    Wait Until Element Is Visible    ${AUCurrency}
    Element Should Be Visible    ${AUCurrency}
    Wait Until Element Is Visible    ${CACurrency}
    Element Should Be Visible    ${CACurrency}  
    Wait Until Element Is Visible    ${NZCurrency}
    Element Should Be Visible    ${NZCurrency}

Select GBP Currency
    Wait Until Element Is Visible    ${GBCurrency}
    Element Should Be Visible    ${GBCurrency}
    Scroll Element Into View    ${GBCurrency}
    Click Element    ${GBCurrency}

Confirm TFAL Items Not Visible
    

Confirm Pricing Change - Collections & PDP


Confirm GBP Pricing Carries Through from PDP to Cart



Confirm GBP Pricing Carries Through from Cart to Checkout


Confirm INTL Checkout Display


