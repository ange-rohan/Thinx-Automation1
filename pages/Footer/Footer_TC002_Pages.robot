*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CustomerServiceHeader}    //h2[.='customer service']
${ContactUs}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='contact us']
${FAQs}                    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='faqs']
${Reviews}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='reviews']
${ExclusiveDiscounts}    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'exclusive discounts')]
${StudentDiscount}        //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='student discount']
${StoreLocator}          //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'store locator')]

${Orders&PaymentHeader}        //h2[.='orders & payment']
${Account}                   //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='account']
${ShippingInfo}              //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='shipping info']
${Returns}                   //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='returns & exchanges']
${TrackOrder}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='track my order']

${OurCompanyHeader}            //h2[.='our company']
${AboutUs}                    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'about us')]
${GetBodyWise}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='Get BodyWise']
${ExploreOurBrands}            //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='explore our brands']
${ProductSafety}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='product safety']
${OurProtectionPromise}        //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='our protection promise']

${CurrencySelector}        //localization-form[@class='max-w-screen-sm lg:max-w-fit w-full px-3 lg:px-0']
${EmailNewsletter}        //input[@id='newsletter-email']
${SMSSignUp}              //input[@id='phone']


${SocialLinkIconsSection}    //div[@class='flex gap-20 my-10 lg:mt-[155px] lg:mb-0 items-end']//div[@class='flex flex-col gap-3']
${TitleSocialLink}        //div[@class='flex gap-20 my-10 lg:mt-[155px] lg:mb-0 items-end']//h3[@class='body-2-bold']
${SocialLinkIcons}        //a[@target='_blank']/i