# Script Name: PLP_TC004_Test
# Description: Product PLP - Product Listing -User should see the product tile displayed in 2 column grid
# Author: Sneha Banad
# Created on: 11/12/2023
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\PLP\PLP_TC005_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/PLP/PLP_TC005_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Ubykotex
    Click Accept Cookies Button
	Sleep   5
	# Click on Shop All from main menu
	Click on First option from the main menu
	# Click on Pads from By Product Type
	Click on first product from the sub menu of by product type
	Validate the number of Products displayed on PLP page
	# Validate products displayed in column grids
    Validate Product Tile displayed in 2 column grid on PLP page
    Validate Product Filter Section in left panel on PLP page
    Validate First Product in tile on PLP page
    Validate Second Product in tile on PLP page



