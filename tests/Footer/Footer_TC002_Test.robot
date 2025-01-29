# Script Name: Footer_TC002_Test
# Description: Navigation - Global Main Footer - Validation of link lists present in footer section
# Author: Sneha Banad
# Created on: 11/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC002_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC001_Steps.robot
Resource          ../../steps/Footer/Footer_TC002_Steps.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Scroll to the Footer Section
	# Retrieve all the link lists present on Footer section
	Validate and capture the Footer Link List Sections on Footer Section
	# Retrieve All the main titles on footer section
	Retrieve the Footer Titles present on Footer Section
	# Retrieve the First Link list type and corresponding links
	Validate and retrieve the links present in First grid on footer section
	# Retrieve the Second Link list type and corresponding links
	Validate and retrieve the links present in Second grid on footer section
	# Retrieve the Third Link list type and corresponding links
	Validate and retrieve the links present in Third grid on footer section
	# Retrieve the Fourth Link list type and corresponding links
	Validate and retrieve the links present in Fourth grid on footer section
	Click on First Link From First Grid and capture the page
	Click on First Link From Second Grid and capture the page
	Click on First Link From Third Grid and capture the page
	Click on First Link From Fourth Grid and capture the page
	# Validate external icon present for applicable menu item
	Retrieve the External Icon count and link names present on footer section
	# Validate the Social Link icon section
	Validate Social Link Icons Section Present on Footer Section
	Retreive the Title of Social Link Icons Section
	Retrieve the Social Link Icons from footer section
	# Click on all social medial link icons and validate the page
	Click on Social Media Icons and validate the respective pages


