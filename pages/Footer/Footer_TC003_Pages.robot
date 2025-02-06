*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TermsCondLinkFooter}        //a[.='terms of use']
${TermsURL}                    https://www.thinx.com/pages/terms-of-use
${PrivacyPolicyFooter}        //*[contains(text(),'Privacy Policy')]
${PrivacyURL}                 https://www.thinx.com/pages/privacy-policy   
${LimitTheUseLinkFooter}      //a[.='Limit use of my sensitive personal information']
${LimitTheUseURL}                https://www.thinx.com/pages/do-not-sell-my-personal-information
${CaliforniaRightsLink}        //a[.='California Privacy Rights']
${Heading1CaliforniaPrivacy}    //strong[contains(.,'Residents of California')]
${Heading2CaliforniaPrivacy}    //strong[contains(.,'1. Notice of Collection and Use of Personal Information')]
${CaliforniaURL}                https://www.thinx.com/pages/privacy-policy#residents-of-california
${PrivacyPolicyLinkReg}       //a[.='privacy policy']
${TandCondLinkReg}            //a[.='terms of use']
${Sitemap}                    //a[.='sitemap']
${SitemapURL}                https://www.thinx.com/pages/sitemap
${Accessibility}            //a[.='accessibility']
${AccessibilityURL}         https://www.thinx.com/pages/accessibility
${CookieSettings}            //button[@class='body-3-bold no-underline text-default']
${TermsLinkSection}        //ul[@class='flex flex-wrap gap-y-3']
${H1}                        //h1[@class='heading-1']
${H2}                        //h2[@class='heading-2 mb-2']