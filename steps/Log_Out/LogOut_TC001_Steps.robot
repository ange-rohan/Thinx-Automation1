*** Settings ***
Library    SeleniumLibrary
Resource         ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Login/Login_TC003_Pages.robot
Resource          ../../pages/Log_Out/LogOut_TC001_Pages.robot


*** Keywords ***
Login to Thinx
	Login Page Opened
	Enter Username      ${user}
    Enter Password      ${pwd}
	Validate clicked Logout CTA to Logout
	Validate landed on home page after logged out