*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Update-Password/UpdatePwd_TC003_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC004_Pages.robot

*** Keywords ***
Login to ubykotex
	Login Page Opened
	Click Accept Cookies Button
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on dropdown and my profile
	Click on my account option
	Enter Password details      ${pwd}      ${CnfrmPwd}
    Click on cancel button
    Validate all the passwords are set to blank fields