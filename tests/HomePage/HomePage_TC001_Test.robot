# Script Name: HomePage_TC001_Test
# Description: Homepage-User should see the correct homepage elements based on design

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/HomePage/HomePage_TC001_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC001_Pages.robot
Resource          ../../steps/PDP/PDP_TC004_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Homepage Using Chrome Browser
    Click Accept Cookies Button
	Sleep         5
    Accept Cookies and Close Welcome Modal
	Validate Hero Section Displays
	Validate Remaining Homepage Sections Visible
    Validate Homepage Carousel Section
	Validate Next Arrow Carousel on homepage
	Validate the content block during the transition of Carousel
    Validate the Remaining Page Elements Are Visible