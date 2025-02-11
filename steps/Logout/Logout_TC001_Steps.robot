*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Login/Login_TC003_Pages.robot
Resource          ../../pages/Logout/Logout_TC001_Pages.robot

*** Variables ***
${user}     thinx.automation1@yopmail.com
${pwd}      Test@kc1234

*** Keywords ***
Login to Thinx
	Login Page Opened
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn CTA
	Validate successfully landed on profile page
	Capture Page Screenshot
    Click the Logout CTA
    Confirm Homepage Visibility on Logout
