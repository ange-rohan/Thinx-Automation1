*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HeroSection}            //div[@class='shopify-section shopify-section-hero']
${HeroH1}                 //h1[@class='heading-2 mb-2']
${HeroCTA}                //button[@class='button button--secondary']
${CollecionsListing}     //main[@id='MainContent']/div[3]/section[contains(.,'{}')]
${3IconSection}          //main[@id='MainContent']/div[contains(.,'safe materials')]
${VideoSection}         //main[@id='MainContent']/div[5]
${CarouselSection}       //section[contains(.,'best sellersstaff pickssleepbuttery softXSSMLXL1X2X3X4XPeriodUltra Soft Sleep Sh')]
${NextArrowCarousel}     //button[@class='next flex size-7.5 items-center justify-center rounded-full border border-default p-2 [&>svg]:h-2.5 [&>svg]:w-3']
${ImgCarousel}        //div[@class='swiper-slide swiper-slide-active !w-[250px] lg:!w-[calc(25%-30px)]']//img[@alt='Ultra Soft Sleep Shorts']
${CarouselContent}       //div[@id='product-carousel-tabpanel']/div[@class='swiper-wrapper']
${PreviousArrowCarousel}   //button[@class='prev flex size-7.5 items-center justify-center rounded-full border border-default p-2 [&>svg]:h-2.5 [&>svg]:w-3 [&>svg]:rotate-180']
${ReviewsSection}            //section[@class='featured-text px-3 py-10 md:py-14']
${GetBodywiseSection}        //main[@id='MainContent']/div[11]
${WelcomeModal}         //div[@class='flex h-full flex-col']