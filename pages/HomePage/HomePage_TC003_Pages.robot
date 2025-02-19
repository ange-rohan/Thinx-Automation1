*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CarouselSection}       //section[contains(.,'best sellersstaff pickssleepbuttery softXSSMLXL1X2X3X4XPeriodbuy more, save more')]
${PDP Link}              //div[@class='swiper-slide swiper-slide-active !w-[250px] lg:!w-[calc(25%-30px)]']//a[.='Ultra Soft Sleep Shorts']
${QuickAdd}              //div[@class='swiper-slide swiper-slide-active !w-[250px] lg:!w-[calc(25%-30px)]']//label[.='XS']
${ColorSwatch}         //div[@class='swiper-slide swiper-slide-active !w-[250px] lg:!w-[calc(25%-30px)]']//div[.='Plum']
${ImgCarousel}        //div[@class='swiper-slide swiper-slide-active !w-[250px] lg:!w-[calc(25%-30px)]']//img[@alt='Ultra Soft Sleep Shorts']
${CarouselContent}       //div[@id='product-carousel-tabpanel']/div[@class='swiper-wrapper']
${PreviousArrowCarousel}   //button[@class='prev flex size-7.5 items-center justify-center rounded-full border border-default p-2 [&>svg]:h-2.5 [&>svg]:w-3 [&>svg]:rotate-180']
${Expected_Link}         https://www.thinx.com/products/period-all-night-ultra-soft-sleep-shorts?variant=40174028750920
${Expected_H1}           Ultra Soft Sleep Shorts
${Image}                  //img[@alt='Ultra Soft Sleep Shorts']
${Expected_Image_SRC}     https://www.thinx.com/cdn/shop/files/GlamourBadge_Thinx_Signature_Overnight-Sleep-Shorts_Plum_Front.png?v=1732663305 != //img[@alt='Ultra Soft Sleep Shorts']