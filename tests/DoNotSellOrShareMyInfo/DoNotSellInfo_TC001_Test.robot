# Script Name: DoNotSellInfo_TC001_Test
# Description: Verify if Do Not Sell or Share My Personal Information link is clickable and present in footer
# Author: Sneha Banad
# Created on: 03/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\DoNotSellOrShareMyInfo\DoNotSellInfo_TC001.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Test Cases ***
Login to ubykotex
	Click Accept Cookies Button
	Sleep    5
	Click on Do Not Sell Info Link from footer section
	Validate all the fields on Do not sell footer section
