*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Test.robot

*** Keywords ***
Open Thinx
	Click Accept Cookies Button
	Click on Do Not Sell Info Link from footer section
    Click the Cancel & Return CTA
    Validate You're Routed Back to the Homepage
	Click on Cookie Settings
	Validate + icon and expand and view all the descriptions
    Validate That All Cookies Are On



