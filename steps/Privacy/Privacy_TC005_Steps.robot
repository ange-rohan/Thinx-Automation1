*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Privacy/Privacy_TC005_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Registration Page Opened
	Enter all the fields    ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Select Policy Checkbox And Click Create Account
	Verify success message of account creation
	Click on dropdown and my profile
	Expand Privacy Section
	Select Do not sell toggle switch button on privacy section
	Click on update profile of privacy
    Validate profile has been updated
    Click on Do Not Sell Info Link from footer section
    Validate both checkbox should be selected in do not sell info section
    Click On Cookie Settings
    Validate Marketing Cookie Should Be Turned Off

