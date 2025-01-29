*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PeriodNav}              //span[.='period']
${PeriodSubmenu}          //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//li[2]/div[contains(.,'Featured')]    

${BladderNav}              //span[.='bladder']
${TeensNav}                 //span[.='teens']
${SetsNav}                  //span[.='saver sets']
${LastCallNav}             //span[.='last call']
${TakeTheQuizCTA}            //span[.='take the quiz']
${LearnNav}                //span[.='learn']
${SignInNav}                //header[@class='flex justify-between items-center px-3 h-[3.25rem] lg:h-14.5 lg:px-8 bg-white border-b border-b-brand-tangerine']//a[contains(.,'Sign in')]
${Cart}                        //button[@class='relative mr-4 lg:mr-0 lg:ml-5 group']