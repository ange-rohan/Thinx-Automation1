*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BrandLogo}       //div[@class='flex items-center w-[53px] lg:w-[60px]']/img[@alt='Thinx Inc.']
${HeroSection}            //div[@class='shopify-section shopify-section-hero']
${HeroH1}                 //h1[@class='heading-2 mb-2']
${EXPECTED_TEXT_1}       absorbent underwear for comfort & confidence
${HeroCTA}                //button[@class='button button--secondary']
${EXPECTED_TEXT_2}        shop all