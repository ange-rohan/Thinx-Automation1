*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Resource         ../../pages/Update-Password/UpdatePwd_TC004_Pages.robot
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
    Click on close cta and validate collapse the section