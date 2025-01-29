*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ReviewThisProduct}    xpath: //*[@id="bv_review_maincontainer"]/div[2]/div[1]/div[3]/div/div[1]/div/div[5]/div
${SubmitCTA}    xpath: //button[contains(text(),'Submit')]
${BlankNameErr}     css: #bv-label-text-usernickname-error
${EmailErr}     css: #bv-label-text-authenticationemail-error
${AgeErr}       css: #bv-label-text-Age_1-error
${EmailPermissionErr}   css: #bv-label-text-Email_Permission-error
${IncentiveReviewErr}   css: #bv-label-text-IncentivizedReview-error
${AgreementErr}     css: #bv-label-text-agreements-error
${ReviewTextErr}    css: #bv-label-text-reviewtext-error
${EnterReview}      xpath: //textarea[@name='Review']
${EnterName}        xpath: //input[@name='Name to Display with Review']
${EnterEmail}       xpath: //input[@name='Email']


*** Keywords ***
Click on review this product
	Wait Until Element Is Visible    ${ReviewThisProduct}
	Element Should Be Visible    ${ReviewThisProduct}
	Click Element    ${ReviewThisProduct}
	Sleep    2

Click on submit review CTA
	Wait Until Element Is Visible    ${SubmitCTA}
	Element Should Be Visible    ${SubmitCTA}
	Click Element    ${SubmitCTA}
    Sleep    2

Validate error messages for unfilled fields on my review page
	Wait Until Element Is Visible   ${BlankNameErr}
	Element Should Be Visible       ${BlankNameErr}
    Capture Element Screenshot  ${BlankNameErr}
    Sleep    2

	Wait Until Element Is Visible   ${EmailErr}
	Element Should Be Visible       ${EmailErr}
    Capture Element Screenshot   ${EmailErr}
    Sleep    2

	Wait Until Element Is Visible   ${AgeErr}
	Element Should Be Visible       ${AgeErr}
    Capture Element Screenshot    ${AgeErr}
    Sleep    2

	Wait Until Element Is Visible   ${EmailPermissionErr}
	Element Should Be Visible       ${EmailPermissionErr}
    Capture Element Screenshot    ${EmailPermissionErr}
    Sleep    2

	Wait Until Element Is Visible   ${IncentiveReviewErr}
	Element Should Be Visible       ${IncentiveReviewErr}
    Capture Element Screenshot    ${IncentiveReviewErr}
    Sleep    2

	Wait Until Element Is Visible   ${AgreementErr}
	Element Should Be Visible       ${AgreementErr}
	Capture Element Screenshot    ${AgreementErr}

Validate errors for Invalid fields on my review page
	[Arguments]    ${Review}     ${ReviewerName}  ${Email}
	# Enter invalid Review - less than 60 characters
	Wait Until Element Is Visible   ${EnterReview}
	Element Should Be Visible       ${EnterReview}
	Input Text    ${EnterReview}  ${Review}
	Set Focus To Element    ${EnterName}

	Wait Until Element Is Visible   ${ReviewTextErr}
	Element Should Be Visible       ${ReviewTextErr}
	${ReviewTextErrMsg}=   Get Text    ${ReviewTextErr}
	Log    After entering invalid review the error message displayed as: ${ReviewTextErrMsg}
	Capture Element Screenshot    ${ReviewTextErr}
    Sleep    2

    # Enter invalid name to display
	Wait Until Element Is Visible   ${EnterName}
	Element Should Be Visible       ${EnterName}
	Input Text    ${EnterName}      ${ReviewerName}
    Set Focus To Element   ${EnterEmail}
    Sleep    10
	Wait Until Element Is Visible   ${BlankNameErr}
	Element Should Be Visible       ${BlankNameErr}
	${NameErrMsg}=   Get Text    ${BlankNameErr}
	Log    After entering invalid name the error message displayed as: ${NameErrMsg}
	Capture Element Screenshot    ${BlankNameErr}
    Sleep    10

    # Enter invalid email id
    Wait Until Element Is Visible   ${EnterEmail}
	Element Should Be Visible       ${EnterEmail}
	Input Text    ${EnterEmail}      ${Email}
    Set Focus To Element    ${SubmitCTA}
    Sleep    10
	Wait Until Element Is Visible   ${EmailErr}
	Element Should Be Visible       ${EmailErr}
	${EmailErrMsg}=   Get Text    ${EmailErr}
	Sleep    10
	Log    After entering invalid name the error message displayed as: ${EmailErrMsg}
	Capture Element Screenshot    ${EmailErr}
