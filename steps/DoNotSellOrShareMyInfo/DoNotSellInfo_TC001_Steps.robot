*** Settings ***
Library    SeleniumLibrary
Resource            ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Test.robot


*** Keywords ***
Open Thinx
	Click Accept Cookies Button
	Click on Do Not Sell Info Link from footer section
	Validate all the fields on Do not sell footer section