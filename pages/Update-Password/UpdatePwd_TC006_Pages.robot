*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Update-Password/UpdatePwd_TC001_Pages.robot

*** Variables ***
${SignOut}      xpath: (//a[contains(text(),'Sign Out')])[1]

*** Keywords ***
Click on dropdown and sign out
	Wait Until Page Contains Element    ${ProfileDropdown}
	Element Should Be Visible        ${ProfileDropdown}
	Click Element    ${ProfileDropdown}
	Sleep    2
	Wait Until Element Is Visible    ${SignOut}
	Element Should Be Visible        ${SignOut}
	Click Element    ${SignOut}
