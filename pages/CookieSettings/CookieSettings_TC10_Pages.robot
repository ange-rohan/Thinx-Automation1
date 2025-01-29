*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FirstOptionMainMenu}      xpath: (//a[@id='DropdownMenuLink-1'])[1]
${FirstProductType}         xpath: (//*[@class='subdropdown']/li[1]/a[1])[1]
${FirstProduct}     xpath: (//h3[@class='product-name'])[1]
${ProductReview}    xpath: //h2[normalize-space()='Product Reviews']
${MainHeadingProdRevws}     css: .accordion-head.expanded
${SubHeadingProdRevws}      xpath: //*[contains(text(),'Review Highlights')]
${ReviewHighLights}         xpath: //*[@id="bv_review_maincontainer"]/div[2]/div[1]/div[2]
${OverallRating}        css: section[aria-label='Overall Rating']
${AverageCustomerRatings}     xpath: //*[@id="bv_review_maincontainer"]/div[2]/div[2]

*** Keywords ***
Click on First option from the main menu
	Wait Until Element Is Visible    ${FirstOptionMainMenu}
	Element Should Be Visible    ${FirstOptionMainMenu}
	Click Element    ${FirstOptionMainMenu}
	Sleep    5

Click on first product from the sub menu of by product type
	Wait Until Element Is Visible    ${FirstProductType}
	Element Should Be Visible    ${FirstProductType}
	Click Element    ${FirstProductType}
	Sleep    5

Click on any product from the list
    Execute Javascript    window.scrollTo(0,1000)
    Sleep    5
	Wait Until Element Is Visible    ${FirstProduct}
	Element Should Be Visible    ${FirstProduct}
	Click Element    ${FirstProduct}
	Sleep    5

Click on product reviews section from PDP page
	Execute Javascript    window.scrollTo(0,1700)
	Sleep    5
	Wait Until Element Is Visible    ${ProductReview}
	Element Should Be Visible    ${ProductReview}
	Click Element    ${ProductReview}
	Execute Javascript    window.scrollTo(0,2000)
	Capture Page Screenshot
	Execute Javascript    window.scrollTo(0,2500)
	Capture Page Screenshot
	Sleep    5

Validation of reviews and ratings of product
	Wait Until Element Is Visible    ${MainHeadingProdRevws}
	Element Should Be Visible   ${MainHeadingProdRevws}
	${Heading}=     Get Text    ${MainHeadingProdRevws}
    Log    The heading is :${Heading}
    Capture Element Screenshot  ${MainHeadingProdRevws}
    Sleep    5

    Wait Until Element Is Visible    ${SubHeadingProdRevws}
	Element Should Be Visible   ${SubHeadingProdRevws}
	${SubHeading}=     Get Text    ${SubHeadingProdRevws}
    Log    The heading is :${SubHeading}
    Capture Element Screenshot  ${SubHeadingProdRevws}
    Sleep    5

    Wait Until Element Is Visible    ${ReviewHighLights}
	Element Should Be Visible   ${ReviewHighLights}
	${ReviewHighLightsText}=     Get Text    ${ReviewHighLights}
    Log    The heading is :${ReviewHighLightsText}
    Capture Element Screenshot   ${ReviewHighLights}
    Sleep    5

    Wait Until Element Is Visible    ${OverallRating}
	Element Should Be Visible   ${OverallRating}
	${OverallRatingText}=     Get Text    ${OverallRating}
    Log    The heading is :${OverallRatingText}
    Capture Element Screenshot  ${OverallRating}
    Sleep    5

    Wait Until Element Is Visible    ${AverageCustomerRatings}
	Element Should Be Visible   ${AverageCustomerRatings}
	${AverageCustomerRatingsText}=     Get Text    ${AverageCustomerRatings}
    Log    The heading is :${AverageCustomerRatingsText}
    Capture Element Screenshot  ${AverageCustomerRatings}
