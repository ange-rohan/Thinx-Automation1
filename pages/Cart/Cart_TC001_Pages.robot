*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Cart}                        //button[@class='relative mr-4 lg:mr-0 lg:ml-5 group']
${CartHeading}                //div[@class='heading-4']
${CustomSetDiscountCallout}      //div[@class='color-scheme-6 px-3 py-3 lg:px-8']
${EmptyBagText}                //div[@class='body-1 mb-3 text-center']
${StartShoppingCTA}            //a[.='start shopping']
${CartCloseButton}             //button[@class='[&>svg]:size-6']
${YouMayAlsoLikeHeading}        //div[@class='heading-5']
${ProductCarouselCart}        //div[@id='cart-upsell']
${StartShoppingLink}        https://www.thinx.com/collections/shop-all


