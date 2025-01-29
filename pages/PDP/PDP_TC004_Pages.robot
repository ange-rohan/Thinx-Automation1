*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ColorSelected}              [for='product-option-Color']
${SizeSelected}               [for='product-option-Size']
${ColorSwatch}                //input[@id='product-option-Color-plum']
${ColorSelector}             [for="product-option-Color-plum"] > .swatch__outline'
${ColorSelectedText}              Plum
${CartColorText}              //div[@class='mb-3 flex flex-col gap-y-8 p-8']//div[.='Plum']
${CartImage}                 [src='https://cdn.shopify.com/s/files/1/0795/1599/files/GlamourBadge_Thinx_Signature_Overnight-Sleep-Shorts_Plum_Front.png?v=1732663305']
${SizeButton}                //div[@id='product-option-Size']//div[.='S']
${QuantitySelector}          [action='/cart/add'] .qty-input
${AddQuantity}                [action='/cart/add'] [aria-label='Add']
${RemoveQuantity}              [action='/cart/add'] [aria-label='Remove']
${AddtoBagCTA}                //button[@class='button button--primary flex-1 whitespace-nowrap']
${CloseModal}                   //button[@class='absolute right-3 top-3 [&>svg]:size-6']
${AbsorbecyExpand}            //u[.='12 regular tampons’ worth']
${CustomSetDiscountExpand}    //button[@class='underline']