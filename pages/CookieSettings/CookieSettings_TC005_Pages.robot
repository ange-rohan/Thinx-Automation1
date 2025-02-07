*** Settings ***
Library    SeleniumLibrary
Library    CustomKeywords.py
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot


*** Variables ***
${VideoModule}    //div[@class='video w-full md:block  ']//div[@class='absolute z-10 inset-0 cursor-pointer flex justify-center items-center']
${SleepShortsProductCard}    //article[.='buttery softXSSMLXL1X2X3X4XPeriodUltra Soft Sleep Shorts$55BlackPlum']
${PDPYotpoWidget1}    //div[@class='yotpo-reviews-star-ratings-widget yotpo-star-ratings-widget-override-css yotpo-device-mobile yotpo-display-s']
${PDPYotpoJumplink}        //div[@class='yotpo-sr-bottom-line-text yotpo-sr-bottom-line-text--right-panel']
${PDPYotpoWidget2}    //div[@class='yotpo-header-container']
${QuizWidget}        iframe[src*='form.typeform.com/to/IRIOMpNV?typeform-embed-id=7381751617663181&typeform-embed=embed-widget&typeform-source=thinx.com&typeform-medium=embed-sdk&typeform-medium-version=next&typeform-embed-handles-redirect=1']
${ReviewsLinkFooter}      .body-3[href='/pages/reviews']
${ReviewsPageWidget}    //div[@class='yotpo-widget-clear']
${URL}                   https://www.thinx.com/


