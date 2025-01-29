# Script Name: DoNotSellInfo_TC009_Test
# Description: Verify if  marketing category is turned off by user via OneTrust in footer in Mobile/Desktop view
# Author: Sneha Banad
# Created on: 01/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellInfo\DoNotSellInfo_TC009_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
#Resource          ../../pages/CookieSettings/CookieSettings_TC003_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC009_Pages.robot
#Resource          ../../pages/Login/Login_TC001_Pages.robot
#Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot
#Resource          ../../pages/AboutMe/AboutMe_TC008_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC007_Pages.robot
Resource          ../../steps/DoNotSellOrShareMyInfo/DoNotSellInfo_TC009_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open ubykotex
# First Case - Select both checkbox from do not sell info page from footer section
	Click Accept Cookies Button
	Sleep   10
	Click on Do Not Sell Info Link from footer section
	# Select both checkboxes from do not sell info page from footer section
    Select both checkboxes of do not sell or share my personal information
    Sleep    2
    Click on Cookie Settings
	Sleep    5
	# Validate marketing cookie should be turned off after selecting checkboxes from do not sell info
	Validate Marketing cookie should be turned off
	Close cookie settings section
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	# Validate alert message on PDP
	Validate error message on PDP and link will not be present
	Click on product reviews section from PDP page
	# Validate bazar voice message as review this product will be disabled
	Validate review this product should be disabled from product review section
	Close Browser

# Second Case - Select only do not sell checkbox from do not sell info page from footer section

	Open Ubykotex Page Using Chrome Browser
	Click Accept Cookies Button
	Sleep    5
	Click on Do Not Sell Info Link from footer section
	# Select only do not sell info checkbox from do not sell info page from footer section
	Select only do not sell checkbox from footer section of do not sell info page
	Click on Cookie Settings
	Sleep    5
	# Validate marketing cookie should be turned off after selecting checkboxes from do not sell info
	Validate Marketing cookie should be turned off
	Close cookie settings section
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	# Validate alert message on PDP
	Validate error message on PDP and link will not be present
	Click on product reviews section from PDP page
    # Validate bazar voice message as review this product will be disabled
	Validate review this product should be disabled from product review section
	Close Browser

# Third Case - Select only Limit the use checkbox from do not sell info page from footer section

	Open Ubykotex Page Using Chrome Browser
	Click Accept Cookies Button
	Sleep    5
	Click on Do Not Sell Info Link from footer section
	# Select only do not sell info checkbox from do not sell info page from footer section
	Select only Limit the use checkbox from footer section of do not sell info page
	Click on Cookie Settings
	Sleep    5
	# Validate marketing cookie should be turned off after selecting checkboxes from do not sell info
	Validate Marketing cookie should be turned off
	Close cookie settings section
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	# Validate alert message on PDP
	Validate error message on PDP and link will not be present
	Click on product reviews section from PDP page
    # Validate bazar voice message as review this product will be disabled
	Validate review this product should be disabled from product review section
	Close Browser
