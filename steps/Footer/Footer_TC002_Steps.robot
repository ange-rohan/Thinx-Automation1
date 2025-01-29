*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC002_Pages.robot

*** Keywords ***
Validate and capture the Footer Link List Sections on Footer Section
    Element Should Be Visible        ${FooterLinkLists}
    ${FooterLinkListsText}=    Get Webelements        ${FooterLinkLists} 
    FOR    ${FooterLists}    IN        @{FooterLinkListsText}  
           Capture Element Screenshot        ${FooterLists}
    END

Retrieve the Footer Titles present on Footer Section
    Element Should Be Visible        ${FooterTitles}
    ${Titles}=    Get Webelements        ${FooterTitles}
    FOR    ${Title}        IN        @{Titles}
           ${FooterSectionTitles}=    Get Text    ${Title}
           Log    ${FooterSectionTitles}
    END
    
Validate and retrieve the links present in First grid on footer section
    Element Should Be Visible        ${FirstLinkListType}
    ${FirstLinkListTypeName}=    Get Text    ${FirstLinkListType}
    Log        ${FirstLinkListTypeName}
    Sleep    3
    ${FirstGridLinksText}=    Get Webelements    ${FirstGridLinks}   
    FOR    ${FirstGrid}    IN      @{FirstGridLinksText}   
           ${FirstGridLinkNames}=    Get Text        ${FirstGrid}
           Log    ${FirstGridLinkNames}
    END
    
Validate and retrieve the links present in Second grid on footer section
    Element Should Be Visible        ${SecondLinkListType}
    ${SecondLinkListTypeName}=    Get Text    ${SecondLinkListType}
    Log        ${SecondLinkListTypeName}
    Sleep    3
    ${SecondGridLinksText}=    Get Webelements    ${SecondGridLinks}
    FOR    ${SecondGrid}    IN      @{SecondGridLinksText}
           ${SecondGridLinkNames}=    Get Text        ${SecondGrid}
           Log    ${SecondGridLinkNames}
    END

Validate and retrieve the links present in Third grid on footer section
    Element Should Be Visible        ${ThirdLinkListType}
    ${ThirdLinkListTypeName}=    Get Text    ${ThirdLinkListType}
    Log        ${ThirdLinkListTypeName}
    Sleep    3
    ${ThirdGridLinksText}=    Get Webelements    ${ThirdGridLinks}
    FOR    ${ThirdGrid}    IN      @{ThirdGridLinksText}
           ${ThirdGridLinkNames}=    Get Text        ${ThirdGrid}
           Log    ${ThirdGridLinkNames}
    END

Validate and retrieve the links present in Fourth grid on footer section
    Element Should Be Visible        ${FourthLinkListType}
    ${FourthLinkListTypeName}=    Get Text    ${FourthLinkListType}
    Log        ${FourthLinkListTypeName}
    Sleep    3
    ${FourthGridLinksText}=    Get Webelements    ${FourthGridLinks}
    FOR    ${FourthGrid}    IN      @{FourthGridLinksText}
           ${FourthGridLinkNames}=    Get Text        ${FourthGrid}
           Log    ${FourthGridLinkNames}
    END
    
Click on First Link From First Grid and capture the page
    Element Should Be Visible        ${FirstLinkFirstGrid}    
    Click Element        ${FirstLinkFirstGrid}
    Sleep    3
    Capture Page Screenshot    
    Sleep    5
    Execute Javascript    window.history.back()
    Sleep    3

Click on First Link From Second Grid and capture the page
    Element Should Be Visible        ${FirstLinkSecondGrid}
    Click Element        ${FirstLinkSecondGrid}
    Sleep    3
    Capture Page Screenshot
    Sleep    5
    Execute Javascript    window.history.back()
    Sleep    3

Click on First Link From Third Grid and capture the page
    Element Should Be Visible        ${FirstLinkThirdGrid}
    Click Element        ${FirstLinkThirdGrid}
    Sleep    3
    Capture Page Screenshot
    Sleep    5
    Execute Javascript    window.history.back()
    Sleep    3

Click on First Link From Fourth Grid and capture the page
    Element Should Be Visible        ${ThirdLinkFourthGrid}
    Click Element        ${ThirdLinkFourthGrid}
    Sleep    3
    Capture Page Screenshot
    Sleep    5
    Execute Javascript    window.history.back()
    Sleep    5

Retrieve the External Icon count and link names present on footer section
    Wait Until Page Contains Element        ${ExternalLinks}
    Element Should Be Visible        ${ExternalLinks}    
    ${ExternalLinkCounts}=    Get Element Count        ${ExternalLinks}  
    Log        ${ExternalLinkCounts}
    Sleep    2
    ${ExternalLinksText}=    Get Webelements        ${ExternalLinks}  
    FOR    ${ExternalLink}    IN        @{ExternalLinksText}
           ${ExternalLinkNames}=    Get Text        ${ExternalLink}
           Log    ${ExternalLinkNames}
    END
    
Validate Social Link Icons Section Present on Footer Section
    Execute Javascript    window.scrollTo(0,5000)
    Sleep    5
    Wait Until Page Contains Element        ${SocialLinkIconsSection}    
    Element Should Be Visible        ${SocialLinkIconsSection}    
    Capture Element Screenshot        ${SocialLinkIconsSection}
    
Retreive the Title of Social Link Icons Section
    Element Should Be Visible        ${TitleSocialLink}    
    ${TitleSocialLinkText}=    Get Text        ${TitleSocialLink}
    Log        ${TitleSocialLinkText}
    Capture Element Screenshot        ${TitleSocialLink}     
    
Retrieve the Social Link Icons from footer section 
    Element Should Be Visible        ${SocialLinkIcons}   
    ${SocialLinkIconsImg}=    Get Webelements         ${SocialLinkIcons} 
    FOR    ${SocialLinks}    IN        @{SocialLinkIconsImg}  
           Capture Element Screenshot        ${SocialLinks}
    END
    
Click on Social Media Icons and validate the respective pages
    ${SocialLinkIconsImg}=    Get Webelements         ${SocialLinkIcons} 
    FOR    ${SocialLinks}    IN        @{SocialLinkIconsImg} 
           Click Element        ${SocialLinks}
           Sleep    5
           Switch Window    main
           Sleep    3
    END
       
    