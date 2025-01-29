*** Settings ***
Library       SeleniumLibrary
Resource          ../../pages/Login/Login_TC001_Pages.robot

*** Variables ***
${ForgotPwdPageURL}    https://www.thinx.com/account/login#recover
${ForgotPwdPageH1}     //h1[@class='heading-3']
${ForgotPwdH1Text}     Reset your password


*** Keywords ***
Click on forgot password link
	Wait Until Element Is Visible    ${ForgotPwdLink}
	Click Element       ${ForgotPwdLink}

Validate successfully landed on forgot password page
    Wait Until Location Is    ${ForgotPwdPageURL}    10s
    Location Should Be      ${ForgotPwdPageURL}
	 Wait Until Element Is Visible     ${ForgotPwdPageH1}
       ${ForgotPwdPageH1}=    Get Text    ${ForgotPwdPageH1}
    Should Contain     ${ForgotPwdPageH1}   Reset your password
