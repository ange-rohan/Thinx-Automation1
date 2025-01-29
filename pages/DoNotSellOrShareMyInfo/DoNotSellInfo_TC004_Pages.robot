*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot

*** Variables ***
${LimitTheUseLink}      //*[@class="links show"]/li[4]/a

*** Keywords ***
Click on Do Not Sell Info Link from footer section and validate the contents
	Wait Until Element Is Visible      ${DoNotSellInfo}
	Element Should Be Visible       ${DoNotSellInfo}
	Click Element       ${DoNotSellInfo}
	Sleep    5
	Execute Javascript    window.scrollTo(0,600)

	Wait Until Element Is Visible      ${DoNotSell}
	Element Should Be Visible       ${DoNotSell}
	${DoNotSellCheckboxMsg}=     Get Text    ${DoNotSell}
	Log    Do not sell or share my personal information checkbox is displayed as: ${DoNotSellCheckboxMsg}
    Capture Page Screenshot

Click on Limit the Use of My Sensitive Information Link from footer section
	Wait Until Element Is Visible      ${LimitTheUseLink}
	Element Should Be Visible       ${LimitTheUseLink}
	Click Element       ${LimitTheUseLink}
	Sleep    5

Validate limit the use checkbox is available
	Wait Until Element Is Visible      ${LimitTheUse}
	Element Should Be Visible       ${LimitTheUse}
	${LimitTheUseMsg}=     Get Text    ${LimitTheUse}
	Log    Limit the Use of My Sensitive Personal Information checkbox is displayed as: ${LimitTheUseMsg}
    Capture Element Screenshot    ${LimitTheUse}
