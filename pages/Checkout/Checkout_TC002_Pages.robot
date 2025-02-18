*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${PayNowCTA}        //button[@id='checkout-pay-button']
${AddressLine1}    //div[@id='shippingAddressForm']//input[@class='_7ozb2uq _7ozb2up _1fragemlj _1fragemsv _1fragemof _1fragems1 _7ozb2ut _7ozb2us _1fragemsh _1fragemsc _1fragemsr _7ozb2uv _7ozb2uu _1fragemoz _1fragemp9 _7ozb2u11 _7ozb2u1h _7ozb2ur']
${CityLine2}       //div[@id='shippingAddressForm']//div[@class='_1ip0g651 _1ip0g650 _1fragemlj _1fragem3w _1fragem5p _1fragem2s']//input[@name='city']
${ZipLine3}        //div[@id='shippingAddressForm']//div[@class='_1ip0g651 _1ip0g650 _1fragemlj _1fragem3w _1fragem5p _1fragem2s']//input[@name='postalCode']
${PhoneLine}        //div[@id='shippingAddressForm']//div[@class='_1ip0g651 _1ip0g650 _1fragemlj _1fragem3w _1fragem5p _1fragem2s']//input[@name='phone']
${Shipping Methods}    //div[@class='_1ip0g651 _1ip0g650 _1fragemlj _1fragem4v _1fragem47 _1fragem6o _1fragem60 _1fragem2s']//div[@class='_1ip0g651 _1ip0g650 _1fragemlj _1fragem4b _1fragem64 _1fragem2s']/div[contains(.,'Shipping methodChoose a shipping methodStandard Shipping5-7 days$7.00Priority Sh')]
${StandardShipping}    //p[.='Standard Shipping']
${StandardShippingPrice}   //span[.='$7.00']
${PriorityShipping}    //p[.='Priority Shipping']
${PriorityShippingPrice}    //span[.='$14.00']
${PaymentOptionsCC}    //div[@id='basic-creditCards-collapsible']//div[@class='yyi4ny1b yyi4ny1d yyi4ny1f']

