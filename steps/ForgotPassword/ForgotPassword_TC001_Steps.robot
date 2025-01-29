*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/ForgotPassword/ForgotPassword_TC001_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Click on forgot password link
	Validate all the mandatory data on forgot password page