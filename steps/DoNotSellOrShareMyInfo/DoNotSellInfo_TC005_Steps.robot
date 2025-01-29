*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC005_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Registration Page Opened
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Select Policy Checkbox And Click Create Account
	Verify success message of account creation
	Click on Do Not Sell Info Link from footer section
	Select both checkboxes of do not sell or share my personal information
	Click on Cookie Settings
	Validate Marketing cookie should be turned off