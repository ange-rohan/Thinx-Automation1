*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Test.robot

*** Keywords ***
Login to ubykotex
	Click Accept Cookies Button
	Click on Do Not Sell Info Link from footer section
	Select both checkboxes of do not sell or share my personal information
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
	Validate Marketing cookie should be turned off