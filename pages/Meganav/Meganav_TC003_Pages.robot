*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HamburgerMenu}        //button[@class='lg:hidden w-5 h-5 cursor-pointer']
${MobileCartMenu}        //button[@class='relative mr-4 lg:mr-0 lg:ml-5 group']
${MobileMenuX}            //button[@class='transition-colors duration-200 ease-linear hover:text-brand-tangerine']
${MobileMenuLogo}         //div[@class='flex items-center w-[53px] [&>img]:w-full']/img[@alt='Thinx Inc.']
${MobileShopAll}        //ul[@class='flex flex-col gap-2']/li[@class='flex']/a[contains(.,'shop all')]
${MobilePeriodNav}      //button[@class='flex no-underline justify-between text-left w-full rounded-lg+ h-[70px] items-center px-4 [&>svg]:w-3 [&>svg]:h-3 color-scheme-3']
${MobileBladderNav}        //button[@class='flex no-underline justify-between text-left w-full rounded-lg+ h-[70px] items-center px-4 [&>svg]:w-3 [&>svg]:h-3 color-scheme-4']
${MobileTeensNav}        //button[@class='flex no-underline justify-between text-left w-full rounded-lg+ h-[70px] items-center px-4 [&>svg]:w-3 [&>svg]:h-3 color-scheme-5']
${SaverSetsNav}        //ul[@class='flex flex-col gap-2']/li[@class='flex']/a[contains(.,'saver sets')]