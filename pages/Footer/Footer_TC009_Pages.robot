*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PrivacyPolicyLinkReg}        (//*[contains(text(),'Privacy Policy')])[2]
${TandCondLinkReg}        (//*[contains(text(),'Terms and Conditions')])[1]
${FinIncentivesReg}        (//*[contains(text(),'Financial Incentives.')])[1]
${TandCondLinkLogin}        //*[contains(text(),'Terms & Conditions')]
${FinIncentivesLogin}        //*[contains(text(),'Financial Incentives')]