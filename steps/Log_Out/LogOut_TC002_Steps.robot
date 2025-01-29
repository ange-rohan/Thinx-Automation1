*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/Log_Out/LogOut_TC002_Test.robot

*** Keywords ***
Login to ubykotex
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Sleep    5
	Capture Page Screenshot
	Validate successfully landed on profile page after logged in through my profile URL