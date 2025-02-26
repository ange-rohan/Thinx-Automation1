*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PeriodStyleHead}        //li[@class='flex expanded']//div[@class='flex flex-col order-1 lg:order-2 col-span-3']/span[@class='text-grey-dark body-2-bold mb-2']
${HiphuggerNav}          //li[@class='flex expanded']//a[contains(.,'Hiphugger')]
${BriefNav}             //li[@class='flex expanded']//a[contains(.,'Brief')]
${Hi-WaistNav}          //li[@class='flex expanded']//a[contains(.,'Hi-waist')]
${BoyshortNav}          //li[@class='flex expanded']//a[contains(.,'Boyshort')]
${SleepShortsNav}       //li[@class='flex expanded']//a[contains(.,'Sleep Shorts')]
${BikiniNav}            //li[@class='flex expanded']//a[contains(.,'Bikini')]
${FeaturedHead}        //li[@class='flex expanded']//div[@class='flex flex-col order-2 lg:order-1 col-span-1']/span[@class='text-grey-dark body-2-bold mb-2']
${BestSellersNav}       //li[@class='flex expanded']//a[contains(.,'best sellers')]
${SetsNav}               //li[@class='flex expanded']//a[contains(.,'saver sets')]
${LeakproofNav}        //li[@class='flex expanded']//a[contains(.,'leakproof')]
${LastCallNav}        //li[@class='flex expanded']//a[contains(.,'last call')]
