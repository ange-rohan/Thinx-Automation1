*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CurrencyList1}        //optgroup[1]
${AUCurrency}           //optgroup[1]/option[1]
${CACurrency}           //optgroup[1]/option[2]
${NZCurrency}           //optgroup[1]/option[3]
${GBCurrency}           //optgroup[1]/option[3]
${USCurrency}           //optgroup[1]/option[5]


${CurrencyList2}        //optgroup[2]
${AUSTRIACurrency}      [value='AT']
${BECurrency}           [value='BE']
${DKCurrency}            [value='DK']
${FINCurrency}           [value='FI']

