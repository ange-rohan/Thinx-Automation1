*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FilterButton}      //button[@class='body-1-bold flex items-center gap-2']
${FilterMenu}        //div[@class='isolate flex h-full flex-col']
${ColorFilter}       //span[.='Color']
${RedFilter}        //span[.='Red']
${RedButton}        //span[.='Red']
${MultiFilter}      //span[.='Multi']
${MultiButton}      //input[@value='Multi']
${BeigeFilter}      //span[.='Beige']
${BlueFilter}       //span[.='Blue'] 
${PinkFilter}       //span[.='Pink']
${GreyFilter}       //span[.='Grey'] 
${BlackFilter}      //span[.='Black']  
${AppliedFilter}     //button[@class='body-3 flex items-center gap-x-[2px] rounded-full bg-brand-light-beige px-2 [&>svg]:size-3']/span[.='Red']
${AppliedFilterRemove}       //button[@class='text-[14px] font-medium underline underline-offset-2']
${AppliedFilterURL}    https://www.thinx.com/collections/shop-all?filter.v.option.color=Multi
${FirstProduct}        //article[.='9-1011-1213-1415-16TeensAll-Day Bikini$16Lucky StarsBlack']
${SecondProduct}      //article[.='9-1011-1213-1415-16Teens3-Pair All-Day Bikini Kit$48BlackMulti']
${QuickAddMulti}        //div[@class='mb-8 grid grid-cols-1 gap-7.5 md:grid-cols-2 lg:grid-cols-4']/article[1]//span[.='9-10']
${CartColor}            //div[@class='mb-3 flex flex-col gap-y-8 p-8']//div[.='Lucky Stars']
${SecondProductURL}    https://www.thinx.com/products/teens-all-day-3-pair-bikini-kit?variant=40329303687240
${FilterClose}        //button[@class='size-6']
${ApplyFiltersCTA}    //button[@class='button button--primary w-full']