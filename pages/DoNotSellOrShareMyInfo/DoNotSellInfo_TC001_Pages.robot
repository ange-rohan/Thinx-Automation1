*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DoNotSellInfo}    //a[.='Do not share or sell my personal information']
${Heading}      //h1[@class='heading-1']
${DoNotSell}      //div[@class='my-4 flex flex-col gap-1.5']/div[1]/input[@class='input-checkbox']
${LimitTheUse}    //div[@class='my-4 flex flex-col gap-1.5']/div[2]/input[@class='input-checkbox']
${SubmitCTA}        //button[@id='submit-button']
${CancelCTA}        //a[@id='cancel-button']

*** Keywords ***
Click on Do Not Sell Info Link from footer section
    Execute Javascript    window.scrollTo(0,2000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,3000)
    Sleep    5
    Execute Javascript    window.scrollTo(0,4500)
    Sleep    5
	Wait Until Page Contains Element          ${DoNotSellInfo}
	Element Should Be Visible       ${DoNotSellInfo}
	Click Element       ${DoNotSellInfo}
	Sleep    5

Validate all the fields on Do not sell footer section
	Wait Until Element Is Visible      ${Heading}
	Element Should Be Visible       ${Heading}
	${HeadingMsg}=     Get Text    ${Heading}
	Log    The heading of privacy is displayed as: ${HeadingMsg}
    Capture Page Screenshot
    Execute Javascript    window.scrollTo(0,600)
    Sleep    5

	Wait Until Element Is Visible      ${DoNotSell}
	Element Should Be Visible       ${DoNotSell}
	${DoNotSellCheckboxMsg}=     Get Text    ${DoNotSell}
	Log    Do not sell or share my personal information checkbox is displayed as: ${DoNotSellCheckboxMsg}
    Capture Element Screenshot    ${DoNotSell}
    Sleep    2

	Wait Until Element Is Visible      ${LimitTheUse}
	Element Should Be Visible       ${LimitTheUse}
	${LimitTheUseMsg}=     Get Text    ${LimitTheUse}
	Log    Limit the Use of My Sensitive Personal Information checkbox is displayed as: ${LimitTheUseMsg}
    Capture Element Screenshot    ${LimitTheUse}
    Sleep   5

    Wait Until Page Contains Element      ${SubmitCTA}
	Wait Until Element Is Visible      ${SubmitCTA}
	Element Should Be Visible       ${SubmitCTA}
    Sleep    2

	Wait Until Element Is Visible      ${CancelCTA}
	Element Should Be Visible       ${CancelCTA}
