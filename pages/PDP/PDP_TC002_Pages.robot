*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${FirstSize}                //div[@id='product-option-Size']//div[.='XS']
${ColorSelected}              [for='product-option-Color']
${SizeSelected}               [for='product-option-Size']
${ColorSwatch}               //div[@id='product-option-Color']
${QuantitySelector}          [action='/cart/add'] .qty-input
${AddQuantity}                [action='/cart/add'] [aria-label='Add']
${RemoveQuantity}              [action='/cart/add'] [aria-label='Remove']
${AddtoBagCTA}                //button[@class='button button--primary flex-1 whitespace-nowrap']
${CartTotal}                  //div[@class='flex flex-col content-stretch gap-2 border-t border-t-brand-tangerine px-3 py-5 md:px-8']//div[.='$49.50']
${Expected_Text_Cart_Total}    $49.50
${CloseModal}                   //button[@class='absolute right-3 top-3 [&>svg]:size-6']
${CloseCart}                   xpath: //button[@class='[&>svg]:size-6']