# Script Name: INTL_TC001_Test
# Description: Footer - user scrolls to the footer and is able to change currency
# Comments:


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC003_Steps.robot
Resource          ../../steps/INTL/International_TC001_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx
    Click Accept Cookies Button
	Sleep   5
	Accept Cookies and Close Welcome Modal
	Scroll to the Footer Section