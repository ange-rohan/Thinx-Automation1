*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot

*** Variables ***
${user}     thinx.automation1@yopmail.com

*** Keywords ***
Reject All Cookies
    Wait Until Element Is Visible    ${RejectCookies}
	Element Should Be Visible    locator=${RejectCookies}
	Click Element    locator=${RejectCookies}

Review Homepage Elements to Ensure Cookie Error Messaging is Visible
    Wait Until Element Is Visible    ${VideoModule}
	Element Should Be Visible       locator=${VideoModule}
	Capture Element Screenshot    ${VideoModule}

Review Footer & Email Signup Functionality
    Sleep    2s    # Wait for 2 seconds to ensure the page has scrolled
	Wait Until Element Is Visible     ${NewsletterCheckbox}
	Click Element    ${NewsletterCheckbox}

Enter Test Email in Newsletter Signup
    Wait Until Element Is Visible    ${NewsletterField}
	Input Text                         ${NewsletterField}         ${user}
	Wait Until Element Is Visible    ${NewsletterSubmit}
	Click Element    ${NewsletterSubmit}
	Sleep    5s
	Wait Until Element Is Visible    ${NewsletterError}
	Element Should Be Visible    ${NewsletterError}

Click Store Locator Link In Footer
    Wait Until Element Is Visible    ${StoreLocatorLink}
	Click Element    ${StoreLocatorLink}
	Sleep    5s
    Wait Until Element Is Visible     ${StoreLocatorError}
	Element Should Be Visible    ${StoreLocatorError}

Click Quiz Link In Meganav
    Wait Until Element Is Visible    ${TakeTheQuizCTA}
	Click Element    ${TakeTheQuizCTA}
	Sleep    5s
	Wait Until Element Is Visible    ${TakeTheQuizError}
	Element Should Be Visible    ${TakeTheQuizError}

Click Reviews Link In Footer
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
    Sleep    2s    # Wait for 2 seconds to ensure the page has scrolled
	Wait Until Element Is Visible     ${ReviewsLinkFooter}
	Click Element    ${ReviewsLinkFooter}   
	Sleep     2s
	Wait Until Element Is Visible    ${ReviewsError}
	Element Should Be Visible    ${ReviewsError}

Click Product Link Meganav
    Wait Until Element Is Visible    ${MeetBrandsNav}
	Click Element    ${MeetBrandsNav}
	Sleep    2s
	Wait Until Element Is Visible    ${PeriodProductCard1}
	Capture Page Screenshot
	Click Element    ${PeriodProductCard1}

Validate PDP Does Not Contain Reviews
    Sleep    2s
	Wait Until Element Is Visible    ${PeriodProductReviewsError}
	Element Should Be Visible    ${PeriodProductReviewsError}
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
	Wait Until Element Is Visible    ${PeriodProductReviewsError2}
	Element Should Be Visible    ${PeriodProductReviewsError2}