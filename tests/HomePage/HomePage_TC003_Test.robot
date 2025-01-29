# Script Name: HomePage_TC002_Test
# Description: Homepage-User should be able to quick add items from carousel

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC003_Pages.robot
Resource          ../../steps/HomePage/HomePage_TC003_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Homepage Using Chrome Browser
    Validate Homepage Carousel Section
    Validate Navigation to PDP on Click
