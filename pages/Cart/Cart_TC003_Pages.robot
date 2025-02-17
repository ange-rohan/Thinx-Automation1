*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${AddQuantitycart}    //div[@class='flex items-end justify-between']//button[2]
${RemoveQuantitycart}    //div[@class='flex items-end justify-between']//button[1]
${QuantityType}        quantity
${CloseCartButton}      //button[@class='[&>svg]:size-6']
${ClosedCartCountAdded}     [data-cart-count='2']
${ClosedCartCountRemoved}     [data-cart-count='1']
${CustomSetTextUpdated}        //div[@class='body-3 [&>a]:body-3-underline mb-2 text-center']