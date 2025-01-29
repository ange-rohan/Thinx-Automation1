*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Privacy/Privacy_TC003_Test.robot

*** Keywords ***
Login to ubykotex
	#Clicking on signin link
	Login Page Opened
	Click Accept Cookies Button
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	#Selecting My profile from dropdown after logging in
	Click on dropdown and my profile
	Sleep    5
	Expand Privacy Section
	Sleep    5
	Select Do not sell toggle switch button on privacy section
	Sleep    5
    Click on cancel CTA of privacy section
    Validate changes reverted after clicking on cancel CTA on privacy section