*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC004_Pages.robot


*** Keywords ***
Registration to ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Enter all the fields    ${Fname}        ${Lname}        ${Pwd}      ${EmailAdd}        ${Mnt}        ${Yr}
	Select Policy Checkbox And Click Create Account