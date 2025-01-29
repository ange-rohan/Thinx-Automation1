*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC002_Pages.robot

*** Keywords ***
Login to Thinx
	Login Page Opened
	Click Accept Cookies Button
	Sleep    5
	Click on forgot password link
	Validate successfully landed on forgot password page
