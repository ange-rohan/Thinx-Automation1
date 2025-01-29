*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC007_Pages.robot
Resource          ../../pages/Registration/Registration_TC10_Pages.robot

*** Keywords ***
Registration to ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Enter all the fields           ${Fname}          ${Lname}     ${Email}    ${Pwd}
	Select DOB      ${Mnt}  ${Yr}
	Sleep    10
	Validate error message of more than 13 year old
