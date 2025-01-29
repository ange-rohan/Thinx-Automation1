*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/ForgotPassword/ForgotPassword_TC002_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Click on forgot password link
	Validate email address is blank
	Validate send email CTA is disabled