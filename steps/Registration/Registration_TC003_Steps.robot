*** Settings ***
Library       SeleniumLibrary
Resource        ../../pages/Registration/Registration_TC003_Pages.robot
Resource        ../../pages/Registration/Registration_TC004_Pages.robot

*** Keywords ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Enter all the fields           ${Fname}      ${Lname}     ${Email}    ${Pwd} ${Mnt}  ${Yr}
	Select Policy Checkbox And Click Create Account
	Validation of already exists email id
