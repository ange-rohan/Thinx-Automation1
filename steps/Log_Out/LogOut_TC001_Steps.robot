*** Settings ***
Library    SeleniumLibrary
Resource         ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC003_Pages.robot
Resource          ../../pages/Log_Out/LogOut_TC001_Pages.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Login/Login_TC003_Steps.robot

*** Variables ***
${user}     thinx.automation1@yopmail.com
${pwd}      Test@kc1234



*** Keywords ***
Login to Thinx
	Login Page Opened
    Enter Username     ${user}
    Enter Password     ${pwd}
	Click On SignIn CTA
	Validate successfully landed on profile page
	Validate clicked Logout CTA to Logout
	Validate landed on home page after logged out