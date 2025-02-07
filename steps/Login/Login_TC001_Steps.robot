*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Registration/Registration_TC001_Pages.robot


*** Keywords ***
Login to Thinx
    Login Page Opened
	Sleep    5
	Validate all the mandatory data on login page