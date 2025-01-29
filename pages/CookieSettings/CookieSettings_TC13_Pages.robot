*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC12_Pages.robot

*** Variables ***
${ReviewTitle}      xpath: //input[@name='Review Title']
${18Above}      xpath: //*[@name='18OrAbove']
${EmailNotification}    xpath: //div[@id='0_Email_Permission-False']
${Incentive}    xpath: //div[@id='0_IncentivizedReview-false']
${TermsCondChkbox}  css: #sps-termsAndConditions-styledcheckbox
${Skip}     xpath: //button[contains(text(),'Skip')]
${Recommend}    xpath: //div[@id='2_isrecommended-true']
${Absorbency}   css: #bv-ips-star-Absorbency-2
${Comfort}      css: #bv-ips-star-Comfort-3
${Flexibility}  css: #bv-ips-star-Flexibility-4
${Success}      css: #bv-label-text-undefined
${SuccessDescription}   xpath: //p[normalize-space()='Your review was submitted!']
${CloseCTA}     xpath: //div[@type='popup']//button[contains(text(),'Close')]


*** Keywords ***
Enter all valid fields in my review page
	[Arguments]    ${Review}     ${Title}   ${ReviewerName}    ${Email}
	# Enter invalid Review
	Wait Until Element Is Visible   ${EnterReview}
	Element Should Be Visible       ${EnterReview}
	Input Text    ${EnterReview}  ${Review}
	Capture Page Screenshot

	# Enter Review Title
	Wait Until Element Is Visible   ${ReviewTitle}
	Element Should Be Visible       ${ReviewTitle}
	Input Text    ${ReviewTitle}  ${Title}
    Sleep    2

	# Enter Valid name to display
	Wait Until Element Is Visible   ${EnterName}
	Element Should Be Visible       ${EnterName}
	Input Text    ${EnterName}      ${ReviewerName}

	# Enter Valid email id
    Wait Until Element Is Visible   ${EnterEmail}
	Element Should Be Visible       ${EnterEmail}
	Input Text    ${EnterEmail}      ${Email}
    Sleep    2

	# Select the age
	Wait Until Element Is Visible   ${18Above}
	Element Should Be Visible       ${18Above}
	Click Element    ${18Above}
	Capture Page Screenshot

	# Select the email notification as NO
	Wait Until Element Is Visible   ${EmailNotification}
	Element Should Be Visible       ${EmailNotification}
	Click Element    ${EmailNotification}
    Sleep    2

	# Select the Incentive as No
	Wait Until Element Is Visible   ${Incentive}
	Element Should Be Visible       ${Incentive}
	Click Element    ${Incentive}

	# Check the chekcbox of terms and conditions
	Wait Until Element Is Visible   ${TermsCondChkbox}
	Element Should Be Visible       ${TermsCondChkbox}
	Click Element    ${TermsCondChkbox}
	Capture Page Screenshot

Enter product rating fields
	Capture Page Screenshot
	# Skip the optional fields
	Wait Until Element Is Visible   ${Skip}
	Element Should Be Visible       ${Skip}
	Click Element    ${Skip}
    Sleep    2

	# Select Would you recommend this product to a friend? as Yes
	Wait Until Element Is Visible   ${Recommend}
	Element Should Be Visible       ${Recommend}
	Click Element    ${Recommend}

	# Select Absorbency
	Wait Until Element Is Visible   ${Absorbency}
	Element Should Be Visible       ${Absorbency}
	Click Element    ${Absorbency}
	Capture Page Screenshot

	# Select Comfort
	Wait Until Element Is Visible   ${Comfort}
	Element Should Be Visible       ${Comfort}
	Click Element    ${Comfort}

    # Select Flexibility
	Wait Until Element Is Visible   ${Flexibility}
	Element Should Be Visible       ${Flexibility}
	Click Element    ${Flexibility}
	Capture Page Screenshot
	Sleep    5

Validate success message of submit review
	Wait Until Element Is Visible   ${Success}
	Element Should Be Visible       ${Success}
	${SuccessMsg}=     Get Text    ${Success}
	Log    The Success message after submitting the review: ${SuccessMsg}
	Capture Page Screenshot
    Sleep    2

	Wait Until Element Is Visible   ${SuccessDescription}
	Element Should Be Visible       ${SuccessDescription}
	${SuccessDescriptionMsg}=     Get Text    ${SuccessDescription}
	Log    The Success description message after submitting the review: ${SuccessDescriptionMsg}
    Sleep    2

	Wait Until Element Is Visible   ${CloseCTA}
	Element Should Be Visible       ${CloseCTA}