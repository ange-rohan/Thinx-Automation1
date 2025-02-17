*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RemoveItem}        //button[@class='body-3-underline text-grey-dark hover:no-underline']
${SubtotalText}        //div[@class='body-3 flex-auto']
${TotalSavingsText}    //div[.='Total savings']
${CustomSetDiscountText}    //div[@class='body-3 [&>a]:body-3-underline mb-2 text-center']
${QuantityInput}          //input[@id='quantity']
${CartUpsellQuickAdd}    //button[@class='button button--secondary w-full px-3']
${SizeSelectorCart}     //div[@class='flex w-full flex-wrap gap-2 justify-start']/div[.='M']
${CartItemAdded}            //div[@class='flex-1']/a[.='Ultra Soft Sleep Shorts']
${AddCartQuantity}             [aria-label='Add']
${RemoveCartQuantity}          [aria-label='Remove']