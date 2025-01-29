# Script Name: Meganav_TC002_Test
# Description: User should be able to see the meganav and all menu options 

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/Meganav/Meganav_TC002_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***

Open Thinx Homepage Using Chrome Browser
    Validate Meganav Displays
    Validate Shop All Nav Directs to Right Page
    Validate Period Nav Directs to Right Page
    Validate Bladder Nav Directs to Right Page
    Validate Teens Nav Directs to Right Page
    Validate Sets Nav Directs to Right Page
    Validate Last Call Nav Directs to Right Page
    Validate Take Quiz Nav Directs to Right Page
    Validate Learn Nav Directs to Right Page
    Validate Sign In Nav Directs to Right Page
    Validate Cart Nav Directs to Right Page
    Capture Element Screenshot    locator=${Cart}