# Script Name: Meganav_TC001_Test
# Description: User should be able to see the meganav and all menu options 

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Meganav/Meganav_TC001_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Validate Meganav Displays
    Validate Scrolling Promo Banner Displays
    Validate Menu Items Display
    Validate Utility Nav Items Display
