*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Test.robot
Resource          ../../tests/CookieSettings/CookieSettings_TC002_Test.robot
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Test.robot


*** Keywords ***
Open Thinx
    Accept Cookies
	Click on Do Not Sell Info Link from footer section
	Select both checkboxes of do not sell or share my personal information
	Click on Cookie Settings
	Validate + icon and expand and view all the descriptions
	Validate Marketing cookie should be turned off