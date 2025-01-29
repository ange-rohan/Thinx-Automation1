*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Products}        //div[@class='product-list-wrapper ']
${FilterSection}        //div[@class='product-list-left-wrapper']
${SecondProduct}        (//h3[@class='product-name'])[2]
${NumberOfProducts}        //*[@class='count']
${ProdText}        //*[@class='filter-container']/span[2]