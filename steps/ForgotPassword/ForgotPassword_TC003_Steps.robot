*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/ForgotPassword/ForgotPassword_TC003_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Click on forgot password link
	Enter the email adderss     ${EmailAddress}
	Validate send email CTA is enabled and click on it
	Validate the success message after entering email and click on send email