*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC004_Pages.robot
Resource         ../../pages/Registration/Registration_TC007_Pages.robot

*** Keywords ***
Registration to ubykotex
	Registration Page Opened
	Click Accept Cookies Button
    Sleep    10
	Enter all the fields   ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}    ${Mnt}  ${Yr}
	Validate error message of less than 13 year old
