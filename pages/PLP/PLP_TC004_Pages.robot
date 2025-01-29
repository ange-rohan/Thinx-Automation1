*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FilterButton}      //button[@class='body-1-bold flex items-center gap-2']
${FilterMenu}        //div[@class='isolate flex h-full flex-col']
${AbsorbencyFilter}   //span[.='Absorbency']
${ColorFilter}       //span[.='Color']
${AllDayButton}      //input[@value='All Day']  
${BeigeButton}   //span[.='Beige']
${AppliedFilter}     //button[@class='body-3 flex items-center gap-x-[2px] rounded-full bg-brand-light-beige px-2 [&>svg]:size-3']/span[.='Red']
${AppliedFilterRemove}       //button[@class='text-[14px] font-medium underline underline-offset-2']
${AppliedFilterURL}   https://www.thinx.com/collections/shop-all?filter.p.m.filter.absorbency=All+Day&filter.v.option.color=Beige
${FilterRemovedURL}   https://www.thinx.com/collections/shop-all
${FirstProduct}        //article[contains(.,'no dig waistbandXSSMLXL1X2X3X4XPeriodComfort Stretch Hiphugger$36BlackPlumSlateB')]
${SecondProduct}       //article[.='barely thereXSSMLXLPeriodBreathable Hiphugger$36SlateBrushBlack']
${FilterClose}        //button[@class='size-6']
${ApplyFiltersCTA}    //button[@class='button button--primary w-full']
${FirstProductShopAll}    //article[.='buttery softXSSMLXL1X2X3X4XPeriodUltra Soft Sleep Shorts$55BlackPlum']