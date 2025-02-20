*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EntireModal}    //div[@class='modal rounded-5 bg-brand-light-beige relative']
${ThinxLogo}      //img[@alt='Thinx Logo']
${ModalHeading}        //h2[@class='text-28 text-center']
${ModalDescription}    //p[@class='mt-[15px] text-center']
${ModalLegalText}    //div[@class='rte body-3 [&_a]:body-3-bold']
${ModalEmailField}    //input[@class='body-2 undefined w-full rounded-[30px] border border-solid border-default px-6 py-3 placeholder:text-default focus:border-default focus:outline-none focus:ring-2 focus:ring-default']
${ModalEmailPlaceholderText}    [placeholder='Enter your email']
${ModalCheckbox}     //input[@id='registration_disclaimer']
${ContinueCTA}        //button[@class='button button--primary w-full']
${NoThanksLink}        //button[@class='link cursor-pointer font-medium underline text-14']
${ModalCloseX}        //button[@class='absolute right-3 top-3 [&>svg]:size-6']

