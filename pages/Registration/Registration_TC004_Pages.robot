*** Settings ***
Library       SeleniumLibrary
Library    String

*** Variables ***
${Register}            Xpath: (//a[contains(text(),'Register')])[1]
${Firstname}           Xpath: //input[@name='consumer_firstname']
${Lastname}	           Xpath: //input[@name='consumer_lastname']
${EmailAddress}        Xpath: //input[@name='consumer_email']
${Password}            Xpath: //input[@name='consumer_password']
${Month}              css: #consumer_dateofbirth_month
${Year}               css: #consumer_dateofbirth_year
${AcceptCookies}        xpath: //*[@id="onetrust-accept-btn-handler"]
${Updates_KC}           Xpath: (//span[@class='checkmark'])[1]
${Terms_Conditions}     Xpath: (//span[@class='checkmark'])[3]
${Create_Account}       Xpath: //button[@id='consumer-registration-button']
${TitleMessage}         xpath: //h2[@class='title']
${SuccessMsg}           xpath: //p[@class='desc']
${Word}             kotex_Load_Test
${domain}           kcc.com

*** Keywords ***
Registration Page Opened
	Wait Until Element Is Visible     ${Register}
    Element Should Be Visible         ${Register}
    Click Element                     ${Register}

Click Accept Cookies Button
    Sleep    10
    Wait Until Page Contains Element        ${AcceptCookies}
    Click Element        ${AcceptCookies}

Enter all the fields
     [Arguments]       ${Fname}         ${Lname}       ${EmailAdd}      ${Pwd}  ${Mnt}  ${Yr}

     # Generating random text for First name
	${length}       Set Variable    5
    ${random_string}    Evaluate    random.choices(string.ascii_letters, k=${length})
    ${Fname}=   Evaluate  "".join(${random_string})

	Input Text                         ${Firstname}          ${Fname}

	 # Generating random text for Last name
	${length}       Set Variable    4
    ${random_string}    Evaluate    random.choices(string.ascii_letters, k=${length})
    ${Lname}=   Evaluate  "".join(${random_string})

	Input Text                         ${Lastname}            ${Lname}
	Sleep    5

    ${length}       Set Variable    4
    ${random_string}    Evaluate    random.choices(string.digits, k=${length})
    ${EmailA}=   Evaluate  "".join(${random_string})

    ${EmailAdd}=   Catenate    ${Word}${EmailA}@${domain}
    Log    Email address: ${EmailAdd}

    Input Text                         ${EmailAddress}        ${EmailAdd}
	Sleep    5
	Input Text                         ${Password}            ${Pwd}
	Sleep    5
	Select From List By Index        ${Month}   ${Mnt}
	Sleep    5
	Select From List By Index       ${Year}      ${Yr}
	Set Focus To Element    ${Password}

    Set Global Variable     ${EmailID}  ${EmailAdd}

Select Policy Checkbox And Click Create Account
    Execute Javascript    window.scrollTo(0,300)
    Sleep    5
    Set Focus To Element        ${EmailAddress}
    Wait Until Page Contains Element        ${Updates_KC}
	Wait Until Element Is Visible       ${Updates_KC}
	Click Element                       ${Updates_KC}
	Sleep    5
	Click Element                       ${Terms_Conditions}
	Sleep    5
	Click Element                       ${Create_Account}
	Capture Page Screenshot

Verify success message of account creation
	Capture Page Screenshot
	Wait Until Page Contains Element        ${TitleMessage}
	${titleMsg} =    Get Text       ${TitleMessage}
	${successMessage} =   Get Text    ${SuccessMsg}
