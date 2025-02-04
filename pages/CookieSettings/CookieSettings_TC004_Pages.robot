*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot
Resource          ../../pages/Meganav/Meganav_TC003_Pages.robot

*** Variables ***
${RejectCookies}     //button[@id='onetrust-reject-all-handler']
${VideoModule}       //div[@class='relative hidden md:flex aspect-video overflow-hidden rounded-lg+']/p[.='Uh oh! Content did not load. Check your cookie settings.']
${NewsletterCheckbox}  //input[@id='opt_in']
${PeriodNav}            .flex[href='/collections/period-shop-all']  
${NewsletterField}    //input[@id='newsletter-email']
${NewsletterSubmit}    //div[@class='flex flex-col gap-10']/div[1]//button[@class='underline body-2 absolute top-0 translate-x-1/2 right-[36px] !leading-0 pr-6 disabled:text-grey-dark disabled:opacity-60 focus-visible:decoration-4 focus-visible:outline-none focus-visible:font-medium h-full']
${NewsletterError}    //span[.='Unable to complete request. Please review cookie settings.']
${ReviewsLink}        //a[.='read more reviews']
${ReviewsLinkFooter}    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='reviews']
${ReviewsError}       //p[.='Uh oh! Content did not load. Check your cookie settings.']
${TakeTheQuizError}  //p[.='Uh oh! Content did not load. Check your cookie settings.']
${PeriodProductCard1}       //div[.='extra coverageXSSMLXL']
${PeriodProductReviewsError}    //div[@class='flex flex-col gap-y-2']//p[.='Uh oh! Content did not load. Check your cookie settings.']
${PeriodProductReviewsError2}    //section[@class='shopify-section']//p[.='Uh oh! Content did not load. Check your cookie settings.']
${StoreLocatorLink}        //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='store locator']    
${StoreLocatorError}        //p[.='Uh oh! Content did not load. Check your cookie settings.']





