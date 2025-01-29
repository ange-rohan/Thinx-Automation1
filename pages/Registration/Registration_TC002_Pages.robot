*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot

*** Variables ***
${FirstNameErrMsg}          xpath: //label[@id="consumer_firstname-error"]
${LastNameErrMsg}           xpath: //label[@id='consumer_lastname-error']
${EmailErrMsg}              xpath: //label[@id='consumer_email-error']
${AlpaNumEmailErrMsg}      xpath: //label[@id='consumer_email-error']
${PasswordErrMsg}          xpath: //label[@id='consumer_password-error']
${DOBErrMsg}               xpath: //label[@id='dob-error']
${ChkboxErrMsg}            xpath: //label[contains(text(),'This field is required.')]

*** Keywords ***
FirstName Validation
	[Arguments]               ${AlphaChar}      ${MaxChar}      ${SpcialChar}
	Wait Until Element Is Visible      ${FirstName}
	Element Should Be Visible          ${FirstName}
	Input Text                         ${FirstName}         ${AlphaChar}   10
	Set Focus To Element               ${Lastname}
	${AlphaCharErrMsg} =    Get Text        ${FirstNameErrMsg}
	Log  Invalid FirstName error message disaplayed as :${AlphaChar} + ${AlphaCharErrMsg}
	Sleep    5
    Clear Element Text      ${FirstName}

    Input Text                         ${FirstName}         ${MaxChar}
    Set Focus To Element               ${Lastname}
    Sleep    5
	${AlphaCharErrMsg} =    Get Text   ${FirstNameErrMsg}
	Log  Invalid FirstName error message disaplayed as:${MaxChar} + ${AlphaCharErrMsg}
	Sleep    10
	Clear Element Text      ${FirstName}


    Input Text                         ${FirstName}         ${SpcialChar}   10
    Set Focus To Element               ${Lastname}
    Sleep    5
	${AlphaCharErrMsg} =    Get Text   ${FirstNameErrMsg}
	Log  Invalid FirstName error message disaplayed as:${SpcialChar} + ${AlphaCharErrMsg}
	Sleep    10

LastName Validation
	[Arguments]               ${AlphaChar}      ${MaxChar}      ${SpcialChar}
	Wait Until Element Is Visible      ${LastName}
	Element Should Be Visible          ${LastName}
	Input Text                         ${LastName}         ${AlphaChar}   10
	Set Focus To Element               ${EmailAddress}
	Sleep    5
	${AlphaCharErrMsg} =    Get Text        ${LastNameErrMsg}
	Log  Invalid LastName error message disaplayed as:${AlphaChar} + ${AlphaCharErrMsg}
	Clear Element Text      ${LastName}
	Sleep    10

    Input Text                         ${LastName}         ${MaxChar}
    Set Focus To Element               ${EmailAddress}
    Sleep    5
	${AlphaCharErrMsg} =    Get Text   ${LastNameErrMsg}
	Log  Invalid LastName error message disaplayed as:${MaxChar} + ${AlphaCharErrMsg}
    Clear Element Text      ${LastName}
	Sleep    10

    Input Text                         ${LastName}         ${SpcialChar}   10
    Set Focus To Element               ${EmailAddress}
    Sleep    5
	${AlphaCharErrMsg} =    Get Text   ${LastNameErrMsg}
	Log  Invalid LastName error message disaplayed as:${SpcialChar} + ${AlphaCharErrMsg}
	Sleep    10
	Clear Element Text      ${LastName}

Email Validation
	[Arguments]      ${InvalidEmail}
	Input Text                         ${EmailAddress}         ${InvalidEmail}
    Set Focus To Element               ${Password}
	${InvalidEmailErrMsg} =    Get Text   ${EmailErrMsg}
	Log  Invalid Email Address error message disaplayed as:${EmailErrMsg} + ${InvalidEmailErrMsg}
    Sleep    10

Password Validation
	[Arguments]     ${InvalidPwd}
	Input Text                         ${Password}         ${InvalidPwd}
    Set Focus To Element               ${EmailAddress}
	${PwdErrMsg} =    Get Text   ${PasswordErrMsg}
	Log  Invalid Password error message disaplayed as:${PasswordErrMsg} + ${PwdErrMsg}
	Sleep    10
    Clear Element Text      ${Password}

DOB Validation
	[Arguments]    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}
	Input Text     ${FirstName}       ${Fname}
	Input Text     ${LastName}        ${Lname}
	Input Text     ${EmailAddress}        ${EmailAdd}
	Input Text     ${Password}        ${Pwd}
	Sleep    10
	Set Focus To Element               ${EmailAddress}
	Select Policy Checkbox And Click Create Account
	Sleep    5
	${DateOfBirthErrMsg}=    Get Text   ${DOBErrMsg}
	Log  Invalid DOB error message disaplayed as:${DOBErrMsg} + ${DateOfBirthErrMsg}
    Sleep    5

Checkbox Validation
	Click Element                       ${Updates_KC}
	Sleep    10
	Click Element                       ${Terms_Conditions}
	Sleep    20
	Element Should Be Disabled          ${Create_Account}
