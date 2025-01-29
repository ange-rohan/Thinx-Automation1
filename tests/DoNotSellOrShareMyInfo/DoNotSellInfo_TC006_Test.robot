# Script Name: DoNotSellInfo_TC006_Test
# Description: Verify user unchecks the both the checboxes Do Not Sell and Limit the use and click on submit after signing or without signing in into website from on donotsellmypersonalinfo page
# Author: Sneha Banad
# Created on: 29/11/2023
# Modified by:
# MOdified on:
# Comments: Login with data which has both selected checkboxes in dono sell info from footer section
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC006.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC009_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${user}     kotex_Load_Test6260@kcc.com
${pwd}      Test@kc1234

*** Test Cases ***
Login to ubykotex
	#Clicking on signin link
	Login Page Opened
	Click Accept Cookies Button
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on Do Not Sell Info Link from footer section
	# Unselecting both the checkboxes from do not sell info from footer section
	Select both checkboxes of do not sell or share my personal information
	Sleep    5
    Click on Cookie Settings
	Sleep    5
	# Validation of marketing cookie should be turned on after Unselecting both checkboxes from do not sell info
	Validate Marketing cookie should be turned On
