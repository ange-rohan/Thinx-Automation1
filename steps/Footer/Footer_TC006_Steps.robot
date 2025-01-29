*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Footer/Footer_TC006_Pages.robot

*** Keywords ***
Click on Limit the Use of My Sensitive Personal Information link from Footer Section
    Wait Until Page Contains Element        ${LimitTheUseLinkFooter}
    Element Should Be Visible        ${LimitTheUseLinkFooter}
    Click Element        ${LimitTheUseLinkFooter}
    Sleep    5

Validate Navigation to Limit the Use of My Sensitive Personal Information Page
    Wait Until Page Contains Element        ${LimitTheUseInfoPage}
    Capture Page Screenshot
	Wait Until Element Is Visible       ${LimitTheUseInfoPage}
	Element Should Be Visible       ${LimitTheUseInfoPage}
	${LimitTheUseInfoPageMsg}=  Get Text    ${LimitTheUseInfoPage}
	Log    Limit The Use Information Page : ${LimitTheUseInfoPageMsg}
	Sleep    5