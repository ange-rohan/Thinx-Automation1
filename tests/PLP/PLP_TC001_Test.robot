# Script Name: PLP_TC001_Test
# Description: Product Filter - validate you can open & close the filter menu on the collection page & correct filter options display
# Run Command: robot. \QA-Automation\tests\PLP\PLP_TC001_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/PLP/PLP_TC001_Steps.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC10_Pages.robot
Test Setup        Open Thinx Collections Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Collections Page Using Chrome Browser
    Click Accept Cookies Button
	Sleep   10
    Close Email Modal
	Validate Filter Menu Opens On Click
    Validate Filter Menu Contains All Correct Filter Menu Options
    Validate Filter Menu Displays Apply Filters Button
    Validate Filter Menu Closes On Click 

