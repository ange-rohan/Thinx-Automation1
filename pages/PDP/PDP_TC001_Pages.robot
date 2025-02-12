*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Breadcrumbs}                //ol[@class='flex flex-wrap']
${BrandEyebrow}               //div[@class='relative flex justify-between ']
${Expected_Text}              Period buy more, save more'.
${PDPH1}                      //h1[@class='h4 flex-1']
${Expected_Text2}            Ultra Soft Sleep Shorts
${PDPPrice}                   //div[@class='h5 flex flex-none gap-1']/span[.='$55']
${ReviewsJumplinks}          //div[@class='yotpo-sr-bottom-line-summary']
${ColorSelected}              [for='product-option-Color']
${SizeSelected}               [for='product-option-Size']
${ColorSwatch}               //div[@id='product-option-Color']
${SizeButton}                //div[@id='product-option-Size']//div[.='S']
${QuantitySelector}          [action='/cart/add'] .qty-input
${AddQuantity}                [action='/cart/add'] [aria-label='Add']
${RemoveQuantity}              [action='/cart/add'] [aria-label='Remove']
${AddtoBagCTA}                //button[@class='button button--primary flex-1 whitespace-nowrap']
${AbsorbecyExpand}            //u[.='12 regular tampons’ worth']
${CustomSetDiscountExpand}    //button[@class='underline']
${ProductRecommendations}      //div[@id='product-recommendations']
${FAQsSection}                //section[@class='flex flex-col md:flex-row p-3 pb-10 md:px-8 md:py-10 gap-x-7 gap-y-2 color-scheme-6']
${FinalReviewsSection}        //div[@class='yotpo-main-widget-layout yotpo-align-text']




        