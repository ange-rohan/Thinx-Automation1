*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Registration Page Opened
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Select Policy Checkbox And Click Create Account
	Verify success message of account creation
	Click on dropdown and sign out
	Login Page Opened
	Enter the username which is created by registration flow
	Enter Password      ${pwd}
	Click On SignIn Button
	Click on Cookie Settings
	Validate Marketing cookie should be turned On