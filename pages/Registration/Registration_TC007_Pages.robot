*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot

*** Variables ***

${ErrorOfAge}   css: #dob-error


*** Keywords ***
Select DOB
	[Arguments]     ${Mnt}  ${Yr}
	Select From List By Index        ${Month}       ${Mnt}
	Sleep    10
	Select From List By Index    ${Year}        ${Yr}
	Set Focus To Element    ${Password}

Validate error message of less than 13 year old
	Wait Until Element Is Visible    ${ErrorOfAge}
	Element Should Be Visible        ${ErrorOfAge}
	${ErrMsg}=  Get Text    ${ErrorOfAge}
	Log    The error message of Age Limit is: ${ErrMsg}

