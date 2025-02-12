*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${FirstSize}                //div[@id='product-option-Size']//div[.='XS']
${ColorSelected}              [for='product-option-Color']
${SizeSelected}               [for='product-option-Size']
${ColorSwatch}               //div[@id='product-option-Color']
${QuantitySelector}          //div[@class='w-[6.875rem] flex-none w-[6.875rem] flex-none']/div[@class='qty-input body-3 relative flex h-10 content-center justify-between rounded-3xl border px-5']
${AddQuantity}                //div[@class='w-[6.875rem] flex-none w-[6.875rem] flex-none']//button[2]
${RemoveQuantity}              [action='/cart/add'] [aria-label='Remove']
${AddtoBagCTA}                //button[@class='button button--primary flex-1 whitespace-nowrap']
${CartTotal}                 //div[@class='flex flex-col content-stretch gap-2 border-t border-t-brand-tangerine px-3 py-5 md:px-8']//div[.='$93.50']
${CartTotal2}                //div[@class='flex flex-col content-stretch gap-2 border-t border-t-brand-tangerine px-3 py-5 md:px-8']//div[.='126.22']
${Expected_Text_Cart_Total}    $93.50
${CloseModal}                   //button[@class='absolute right-3 top-3 [&>svg]:size-6']
${CloseCart}                   xpath: //button[@class='[&>svg]:size-6']
${PDPH1}                       //h1[@class='h4 flex-1'] 
${QuantitySelectorType}                                //input[@value='1']
${CHROME_OPTIONS}  --headless  --disable-gpu
${Expected_Text_Cart_Total_2}    $148.50