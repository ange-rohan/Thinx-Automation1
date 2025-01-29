*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Log_Out/LogOut_TC001_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click On Dropdown And Sign Out
	Validate landed on home page after logged out