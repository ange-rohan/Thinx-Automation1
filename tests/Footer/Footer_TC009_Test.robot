# Script Name: Footer_TC009_Test
# Description: Navigation Footer - Verify if Terms and Conditions, Privacy policy and Financial Incentives offered links are present above submit buttonNote:  This does not only apply to a form that then saves the consumer's data but also that collects user email id like Sign in, register, contact us, Forget password, Reset password, Contact us Author: Sneha Banad
# Created on: 15/01/2024
# Modified by:
# MOdified on:
# Comments:
# Run Command: robot. \QA-Automation\tests\Footer\Footer_TC009_Test.robot

# Importing the Libraries
*** Settings ***
Library             SeleniumLibrary
Resource          ../../resources.robot
Resource          ../../pages/Registration/Registration_TC004_Pages.robot
Resource          ../../steps/Footer/Footer_TC009_Steps.robot
Resource          ../../pages/Login/Login_TC001_Pages.robot
Test Setup        Open Ubykotex Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Cases ***
Open UbyKotex
    Click Accept Cookies Button
	Sleep   5
	Registration Page Opened
	# Validate all  the links are present above Create Account button on Registration Page
	Validate all Privacy Links are available just above the Create account CTA on Registration page
	Execute Javascript    window.scrollTo(0,30)
    Sleep    5
	# Click on Login
	Login Page Opened
	# Validate all the links are present above SignIn button on Login Page
	Validate all Privacy Links are available just above the SignIn CTA on Login page


