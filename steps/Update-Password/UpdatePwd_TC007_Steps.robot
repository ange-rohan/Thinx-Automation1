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
	Click on dropdown and my profile
	Click on my account option
	Enter Password details      ${pwd}       ${CnfrmPwd}
	Click on update profile of My account
	Validate profile has been updated
	Click on dropdown and sign out
	Login Page Opened
	Enter Username      ${user}
	Enter Password      ${CnfrmPwd}
	Click On SignIn Button
	Validate successfully landed on profile page