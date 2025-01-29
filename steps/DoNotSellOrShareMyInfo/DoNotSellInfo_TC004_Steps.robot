*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC004_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Registration Page Opened
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Select Policy Checkbox And Click Create Account
	Verify success message of account creation
	Click on Do Not Sell Info Link from footer section and validate the contents
    Click on Limit the Use of My Sensitive Information Link from footer section
    Validate limit the use checkbox is available