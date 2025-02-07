*** Settings ***
Library       SeleniumLibrary
Resource         ../../pages/Registration/Registration_TC002_Pages.robot


*** Keywords ***
Registration of Thinx
	Registration Page Opened
	Sleep    5
	Generate Timestamped Email
	Enter First Name       ${Fname}
	Enter Last Name       ${Lname}
	Enter New Account Email    ${RegisterEmail}
	Enter New Account Password    ${RegisterPwd}
	Sleep    5
    Check Account Disclaimer Checkbox

	


