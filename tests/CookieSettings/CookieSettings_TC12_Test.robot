# Script Name: CookieSettings_TC12_Test
# Description: User validates 'Post Review' button-Then required field validation will be triggered and displays error message on the unfilled field and does not allow user to proceed
# Author: Sneha Banad
# Created on: 02/11/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot.\QA-Automation\tests\CookieSettings\CookieSettings_TC12_Test.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Library             Dialogs
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC12_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser


*** Variables ***
${Review}    gfhghfhg
${ReviewerName}     reg
${Email}            hghg

*** Test Cases ***
Open ubykotex
    Click Accept Cookies Button
	Sleep    10
	Click on First option from the main menu
	Click on first product from the sub menu of by product type
	Click on any product from the list
	Click on product reviews section from PDP page
	Click on review this product
	Click on submit review CTA
	Validate error messages for unfilled fields on my review page
	Validate errors for Invalid fields on my review page     ${Review}     ${ReviewerName}  ${Email}
