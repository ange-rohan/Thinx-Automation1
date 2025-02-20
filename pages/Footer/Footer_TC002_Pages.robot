*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CustomerServiceHeader}    //h2[.='customer service']
${H1}                       //h1[@class='heading-1']
${ContactUs}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='contact us']
${ContactUsURL}            https://www.thinx.com/pages/contact
${FAQs}                    .body-3[href='/pages/faq']
${FAQsURL}                https://www.thinx.com/pages/faq
${ReviewsURL}             https://www.thinx.com/pages/reviews
${Reviews}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='reviews']
${ExclusiveDiscounts}    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'exclusive discounts')]
${StudentDiscount}        //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='student discount']
${StoreLocator}          //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'store locator')]

${Orders&PaymentHeader}        //h2[.='orders & payment']
${Account}                   //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='account']
${AccountURL}                https://www.thinx.com/account/login
${ShippingInfo}              //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='shipping info']
${ShippingInfoURL}           https://www.thinx.com/pages/shipping-rates 
${Returns}                   //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='returns & exchanges']
${ReturnsURL}                https://www.thinx.com/pages/returns
${TrackOrder}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='track my order']
${TrackURL}                  https://tracking.shethinx.com/

${OurCompanyHeader}            //h2[.='our company']
${AboutUs}                    //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//li[contains(.,'about us')]
${AboutUsURL}                https://www.thinx.com/pages/about-us
${GetBodyWise}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='Get BodyWise']
${GetBodyWiseURL}              https://www.thinx.com/pages/getbodywise
${ExploreOurBrands}            //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='explore our brands']
${BrandsURL}                    https://www.thinx.com/pages/meet-our-brands
${ProductSafety}                //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='product safety']
${ProductSafetyURL}            https://www.thinx.com/pages/product-safety-standards
${OurProtectionPromise}        //div[@class='lg:flex lg:justify-between lg:gap-x-[144px] lg:gap-y-4 lg:flex-wrap']/div[@class='lg:w-[150px] hidden lg:block']//a[.='our protection promise']
${OurProtectionPromiseURL}     https://www.thinx.com/pages/our-protection-promise   

${CurrencySelector}        //localization-form[@class='max-w-screen-sm lg:max-w-fit w-full px-3 lg:px-0']
${EmailNewsletter}        //input[@id='newsletter-email']
${SMSSignUp}              //input[@id='phone']


${SocialLinkIconsSection}    //div[@class='flex gap-20 my-10 lg:mt-[155px] lg:mb-0 items-end']//div[@class='flex flex-col gap-3']
${TitleSocialLink}        //div[@class='flex gap-20 my-10 lg:mt-[155px] lg:mb-0 items-end']//h3[@class='body-2-bold']
${SocialLinkIcons}        //a[@target='_blank']/i