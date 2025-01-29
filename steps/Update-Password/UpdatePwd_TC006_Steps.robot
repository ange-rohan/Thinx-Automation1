*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC005_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC006_Pages.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on dropdown and sign out
	Click On SignIn Button
	Enter Username      ${user}
	Enter Invalid Password      ${OldPwd}
	Validate invalid credentials error message