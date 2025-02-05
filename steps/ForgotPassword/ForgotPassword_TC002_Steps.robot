*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/ForgotPassword/ForgotPassword_TC002_Test.robot

*** Keywords ***
Login to Thinx
	Login Page Opened
	Click on forgot password link
	Enter the email address    ${EmailAddress}
	Validate send email CTA is enabled and click on it
	Validate the success message after entering email and click on send email