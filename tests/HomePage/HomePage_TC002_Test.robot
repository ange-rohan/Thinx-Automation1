# Script Name: HomePage_TC002_Test
# Description: Homepage-User should be able to see Thinx brand logo, hero section, and the correct text in browser tab

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../steps/HomePage/HomePage_TC002_Steps.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open Thinx Homepage Using Chrome Browser
	Validate and capture the Brand Logo
	Validate the Hero H1 Text
	Validate the Hero CTA Text
