# Script Name: DoNotSellInfo_TC007_Test
# Description: Verify user checks anyone of the checboxes Do Not Sell and Limit the use and click on submit after signing or without sigining in into website from on donotsellmypersonalinfo page
# Author: Sneha Banad
# Created on: 29/11/2023
# Modified by:
# MOdified on:
# Comments: Use data which checkboxes not selected in do not sell info section from footer
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC007.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC009_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC007_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${user}     kotex_Load_Test1973@kcc.com
${pwd}      Test@kc1234

*** Test Cases ***
Login to ubykotex
    Click Accept Cookies Button
    Sleep    5
    Click on Do Not Sell Info Link from footer section
	# Selecting both the checkboxes from do not sell info from footer section
	Select only do not sell checkbox from footer section of do not sell info page
	Sleep    5
    Click on Cookie Settings
	Sleep    5
	Validate Marketing cookie should be turned off
	Close cookie settings section
	Sleep    10
	Execute Javascript    window.scrollTo(0,10)
	Sleep    5
	#Clicking on signin link
	Login Page Opened
	#Click Accept Cookies Button
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Sleep    10
	Click on Do Not Sell Info Link from footer section
	# Selecting both the checkboxes from do not sell info from footer section
	Select only do not sell checkbox from footer section of do not sell info page
	Sleep    5
    Click on Cookie Settings
	Sleep    5
	Validate Marketing cookie should be turned off
