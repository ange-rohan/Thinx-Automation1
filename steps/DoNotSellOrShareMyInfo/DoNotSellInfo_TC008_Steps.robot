*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC008_Test.robot

*** Keywords ***
Open ubykotex
	Click Accept Cookies Button
	Login Page Opened
	Click on Do Not Sell Info Link from footer section
	Click on cancel and return on do not sell info section
	Validate landed back to signin page after clicking on cancel from do not sell info section