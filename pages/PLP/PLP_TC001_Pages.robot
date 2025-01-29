*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FilterButton}      //button[@class='body-1-bold flex items-center gap-2']
${FilterMenu}        //div[@class='isolate flex h-full flex-col']
${AbsorbencyFilter}   //span[.='Absorbency']
${StyleFilter}        //summary[.='Style']
${BestForFilter}      //span[.='Best For']
${CollectionFilter}    //summary[.='Collection']
${ColorFilter}        //summary[.='Color']
${SizeFilter}        //summary[.='Size']
${FilterClose}        //button[@class='size-6']
${ApplyFiltersCTA}    //button[@class='button button--primary w-full']
${CloseModal}         //button[@class='absolute right-3 top-3 [&>svg]:size-6']


