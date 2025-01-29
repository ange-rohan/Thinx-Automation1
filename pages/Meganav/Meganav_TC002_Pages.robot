*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ShopAllNav}             //span[.='shop all']
${H1}                     //h1[@class='heading-2']
${ExpectedText1}          shop all
${ShopAllURL}              https://www.thinx.com/collections/shop-all

${PeriodNav}              //span[.='period']
${PeriodSubMenu}          //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//li[2]/div[contains(.,'Featured')]  
${ExpectedText2}          shop period 
${PeriodURL}              https://www.thinx.com/collections/period-shop-all

${BladderNav}              //span[.='bladder']
${ExpectedText3}          shop all bladder
${BladderURL}             https://www.thinx.com/collections/bladder-shop-all

${TeensNav}                 //span[.='teens']
${ExpectedText4}          shop all Thinx Teens
${TeensURL}             https://www.thinx.com/collections/teens-shop-all


${SetsNav}                  //span[.='saver sets']
${ExpectedText5}          shop sets
${SetsURL}             https://www.thinx.com/collections/sets


${LastCallNav}             //span[.='last call']
${ExpectedText6}         shop last call
${LastCallURL}           https://www.thinx.com/collections/last-call-sale



${TakeTheQuizCTA}            //span[.='take the quiz']
${QuizWidget}              .layout__LayoutWrapper-sc-35hvts-0
${QuizURL}           https://www.thinx.com/pages/find-your-perfect-pair



${LearnNav}                //span[.='learn']
${ExpectedText7}         how our period underwear works
${LearnH1}               //h1[@class='heading-2 mb-2']
${HowWorksURL}           https://www.thinx.com/pages/how-they-work



${SignInNav}                //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//a[contains(.,'Sign in')]
${SignInURL}                https://www.thinx.com/account/login
${SignInH1}                 //h1[@id='login']


${Cart}                        //button[@class='relative mr-4 lg:mr-0 lg:ml-5 group']
${CartSlideOut}                //div[@class='color-scheme-6 px-3 py-3 lg:px-8']
