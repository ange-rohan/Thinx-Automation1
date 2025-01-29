*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC006_Pages.robot

*** Keywords ***
Registration of ubykotex
    Registration Page Opened
	Click Accept Cookies Button
    Sleep    10
    Select Policy Checkbox And Click Create Account
    Validate all mandatory blank field errors