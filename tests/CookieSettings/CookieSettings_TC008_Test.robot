# Script Name: CookieSettings_TC008_Test
# Description: If a consumer opts out of the sale of data by browsing a website or mobile application anonymously by  rejecting the cookies
# Author: Sneha Banad
# Created on: 14/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\CookieSettings\CookieSettings_TC008_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC003_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC008_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Open ubykotex
	Click Reject Cookies Button
	Sleep    10
	Click on Cookie Settings
	Validate Marketing cookie should be turned Off
