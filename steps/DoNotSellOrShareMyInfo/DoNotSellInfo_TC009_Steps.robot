*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../steps/AboutMe/AboutMe_TC14_Steps.robot

*** Keywords ***
Select only Limit the use checkbox from footer section of do not sell info page
    Execute Javascript    window.scrollTo(0,600)
	Sleep    5
	Wait Until Page Contains Element      ${LimitTheUseCheckbox}
	Element Should Be Visible       ${LimitTheUseCheckbox}
	Click Button        ${LimitTheUseCheckbox}
    Sleep    5
    Capture Page Screenshot
	Click Button        ${SubmitCTA}
    Sleep    5

Validate error message on PDP and link will not be present
    Execute Javascript    window.scrollTo(0,1600)
    Sleep    5
    Wait Until Page Contains Element        ${AlertMessageMoreAbtMe}
    Capture Page Screenshot
    ${AlertMessageOfPDP}=    Get Text    ${AlertMessageMoreAbtMe}
    Log     Alert message on PDP displayed as: ${AlertMessageOfPDP}