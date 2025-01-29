*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DoNotSellBtn}        //div[@id='preference-center-privacy-content']//input[@id='consumer_DoNotSellMyInfoFlag']
${LimitTheUseBtn}        //div[@id='preference-center-privacy-content']//input[@id='consumer_LimittheUseofMyPersonalInfoFlag']
${UpdateProfilePrivacy}     css: #preference-center-privacy-content .consumer-buttons #privacy-section

*** Keywords ***
Select Do not sell toggle switch button on privacy section
	Execute Javascript    window.scrollTo(0,900)
	Sleep    3
	Wait Until Page Contains Element        ${DoNotSellBtn}
    Set Selenium Implicit Wait    10 seconds
    Click Element        ${DoNotSellBtn}
    Sleep    3
	
	Wait Until Page Contains Element        ${LimitTheUseBtn}
    Set Selenium Implicit Wait    10 seconds
    Click Element        ${LimitTheUseBtn}
    Sleep    5
	Capture Page Screenshot

Click on update profile of privacy
	Wait Until Element Is Visible   ${UpdateProfilePrivacy}
	Element Should Be Visible    ${UpdateProfilePrivacy}
	Click Element    ${UpdateProfilePrivacy}
	Sleep    5


