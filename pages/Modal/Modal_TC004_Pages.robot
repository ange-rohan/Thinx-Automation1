*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${ConfirmationModal}                //div[@class='flex h-full flex-col']
${HeadingAllSet}                    //h2[@class='text-28 text-center']
${ConfirmationDescription}          //p[@class='mt-[15px] text-center']
${KeepShoppingCTA}                  //button[@class='button button--primary mt-6 w-full']
${KeepShoppingURL}                   https://www.thinx.com/