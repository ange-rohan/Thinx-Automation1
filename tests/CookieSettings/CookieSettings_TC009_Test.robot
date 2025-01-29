# Script Name: CookieSettings_TC009_Test
# Description: Verify if  marketing category is turned off by user via OneTrust in footer in Mobile/Desktop view
# Author: Sneha Banad
# Created on: 23/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC009_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC003_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC009_Pages.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
Resource          ../../pages/AboutMe/AboutMe_TC008_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${user}     kotex_Load_Test6260@kcc.com
${pwd}      Test@kc1234

*** Test Cases ***
Open ubykotex
	Click Accept Cookies Button
	Sleep    10
	Click on Cookie Settings
	# Turning off marketing cookie from cookie settings
    Turn Off Marketing cookie
    Validate all the sub cookies under marketing cookie are set to off
    Sleep    5
    # Click on any product from main menu
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	# Validation of smart commerce error message
	Validate smart commerce error message
	Click on product reviews section from PDP page
	# Validation of review this product option should be disabled in product review section
	Validate review this product should be disabled from product review section
    Login Page Opened
	Sleep    5
	Enter Username      ${user}
    Enter Password      ${pwd}
	Click On SignIn Button
	Click on Cookie Settings
    Turn Off Marketing cookie
    Click on Save Settings CTA on cookie settings dialog box
    Scroll Element Into View        ${ProfileDropdown}
    Sleep    10
    Click on dropdown and my profile
	Sleep    5
	Expand More About Me Section
	# Validation of error message of survey gizmo when turned off marketing cookie
	Validate survey gizmo error message in more about me section
