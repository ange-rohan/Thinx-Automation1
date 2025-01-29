*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot

*** Variables ***
${AlreadyExistEmailMsg}  xpath: //div[@class='error-msg-text-wrap']

*** Keywords ***
Enter already exists email id
	[Arguments]       ${Fname}         ${Lname}       ${Email}      ${Pwd}  ${Mnt}  ${Yr}
	Input Text                         ${Firstname}          ${Fname}
	Input Text                         ${Lastname}            ${Lname}
	Sleep    10
	Input Text                         ${EmailAddress}        ${Email}
	Sleep    10
	Input Text                         ${Password}            ${Pwd}
	Sleep    10
	Select From List By Index        ${Month}   ${Mnt}
	Sleep    10
	Select From List By Index       ${Year}      ${Yr}
	Set Focus To Element    ${Password}


Validation of already exists email id
	Sleep    10
    ${AlreadyExistEmailErrMsg}=    Get Text        ${AlreadyExistEmailMsg}
	Log  The text messgae is: ${AlreadyExistEmailErrMsg}
