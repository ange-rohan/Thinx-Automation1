*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Keywords ***
Validate successfully landed on profile page after logged in through my profile URL
	Wait Until Element Is Visible    ${ProfileDropdown}
	Element Should Be Visible        ${ProfileDropdown}