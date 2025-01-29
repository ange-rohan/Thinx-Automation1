*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC002_Pages.robot


*** Keywords ***
Registration of Ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	FirstName Validation         ${AlphaChar}    ${MaxChar}      ${SpcialChar}
	LastName Validation        ${AlphaChar}    ${MaxChar}      ${SpcialChar}
	Email Validation            ${InvalidEmail}
    Password Validation       ${InvalidPwd}
    DOB Validation              ${Fname}          ${Lname}     ${EmailAdd}    ${Pwd}
    Checkbox Validation


