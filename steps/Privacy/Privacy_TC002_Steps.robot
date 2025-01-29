*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Privacy/Privacy_TC002_Test.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on dropdown and my profile
	Expand Privacy Section
	Select Do not sell toggle switch button on privacy section
    Click on update profile of privacy
    Validate profile has been updated