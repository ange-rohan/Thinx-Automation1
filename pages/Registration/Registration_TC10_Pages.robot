*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${InfoMsgOfAge}     css: .profile-donotsell-info
${RdBtnDoNtSell}    xpath: (//div[@class='info-message'])[1]
${RdBtnLimit}       xpath: (//div[@class='info-message'])[2]

*** Keywords ***
Validate error message of more than 13 year old
	Wait Until Element Is Visible    ${InfoMsgOfAge}
	Element Should Be Visible        ${InfoMsgOfAge}
	${InfoMsg}=  Get Text    ${InfoMsgOfAge}
	Log    The information message of more than 13 years old Age Limit is: ${InfoMsg}

	Wait Until Element Is Visible    ${RdBtnDoNtSell}
	Element Should Be Visible        ${RdBtnDoNtSell}
	${FirstRdBtn}=  Get Text    ${RdBtnDoNtSell}
	Log    Radio button of do not sell info is: ${FirstRdBtn}

	Wait Until Element Is Visible    ${RdBtnLimit}
	Element Should Be Visible        ${RdBtnLimit}
	${ScndRdBtn}=  Get Text    ${RdBtnLimit}
	Log    Radio button of sensitive personal information is: ${ScndRdBtn}
