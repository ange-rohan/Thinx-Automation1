*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC001_Pages.robot

*** Keywords ***
Registration of ubykotex
	Registration Page Opened
	Click Accept Cookies Button
	Sleep    10
	Validate all the fields