*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FilterButton}      //button[@class='body-1-bold flex items-center gap-2']
${FilterMenu}        //div[@class='isolate flex h-full flex-col']
${AbsorbencyFilter}   //span[.='Absorbency']
${AllNightFilter}    //span[.='All Night']
${AllNightButton}    //label[.='All Night']
${AllDayFilter}      //span[.='All Day']
${SuperFilter}        //span[.='Super']
${HeavyFilter}        //span[.='Heavy']
${ModerateFilter}        //span[.='Moderate']
${LightFilter}        //span[.='Light']
${VeryLightFilter}        //span[.='Very Light']
${LightestFilter}        //span[.='Lightest']

${AppliedFilter}     //button[@class='body-3 flex items-center gap-x-[2px] rounded-full bg-brand-light-beige px-2 [&>svg]:size-3']/span[.='All Night']
${AppliedFilterRemove}       //button[@class='text-[14px] font-medium underline underline-offset-2']
${AppliedFilterURL}    https://www.thinx.com/collections/shop-all?filter.p.m.filter.absorbency=All+Night    
${FirstProduct}        //article[.='buttery softXSSMLXL1X2X3X4XPeriodUltra Soft Sleep Shorts$55BlackPlum']
${SecondProduct}        //article[.='flex fitXSSMLXL1X2X3X4XPeriodUltra Soft Boyshort$39Black']
${SecondProductURL}    https://www.thinx.com/products/period-all-night-ultra-soft-boyshort?variant=40174029373512
${FilterClose}        //button[@class='size-6']
${ApplyFiltersCTA}    //button[@class='button button--primary w-full']