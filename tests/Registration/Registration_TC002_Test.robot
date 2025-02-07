# Script Name: Registration_TC002_Test
# Description: Verify the field level validation on Registration page
# Run Command: robot. \QA-Automation\tests\Registration\Registration_TC002.robot


# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC002_Pages.robot
Test Setup        Open Thinx Homepage Using Chrome Browser
Test Teardown     Close Browser

*** Variables ***
${Fname}            Test
${Lname}            Tweet
${RegisterPwd}          Welcome@12345


*** Test Cases ***
Registration of Thinx
	Registration Page Opened
    Generate Timestamped Email
	Sleep    5
	Enter First Name       ${Fname}
	Enter Last Name       ${Lname}
	${RegisterEmail}=  Generate Timestamped Email
    Input Text  id=RegisterForm-email  ${RegisterEmail}
	Enter New Account Email    ${RegisterEmail}
	Enter New Account Password    ${RegisterPwd}
	Sleep    5
    Check Account Disclaimer Checkbox