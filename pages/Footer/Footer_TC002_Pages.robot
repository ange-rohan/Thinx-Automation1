*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FooterLinkLists}        //div[@class='link-list']
${FooterTitles}        //*[contains(@class,'link-title')]
${FirstLinkListType}        (//*[contains(@class,'link-title')])[1]
${FirstGridLinks}        //div[@class='footer-links']/div[1]/ul/li/a
${SecondLinkListType}        (//*[contains(@class,'link-title')])[2]
${SecondGridLinks}        //div[@class='footer-links']/div[2]/ul/li/a
${ThirdLinkListType}        (//*[contains(@class,'link-title')])[3] 
${ThirdGridLinks}        //div[@class='footer-links']/div[3]/ul/li/a
${FourthLinkListType}        (//*[contains(@class,'link-title')])[4] 
${FourthGridLinks}        //div[@class='footer-links']/div[4]/ul/li/a
${FirstLinkFirstGrid}        (//div[@class='footer-links']/div[1]/ul/li/a)[1]
${FirstLinkSecondGrid}        (//div[@class='footer-links']/div[2]/ul/li/a)[1]
${FirstLinkThirdGrid}        (//div[@class='footer-links']/div[3]/ul/li/a)[1]
${ThirdLinkFourthGrid}        (//div[@class='footer-links']/div[4]/ul/li/a)[3]
${ExternalLinks}        //*[contains(@class,'external-link')]
${SocialLinkIconsSection}        //*[contains(@class,'social-connect')]
${TitleSocialLink}        //*[contains(@class,'social-connect')]/span
${SocialLinkIcons}        //a[@target='_blank']/i