*** Settings ***
Library    SeleniumLibrary
Resource          ../../pages/DoNotSellOrShareMyInfo/DoNotSellInfo_TC002_Pages.robot
Resource          ../../pages/CookieSettings/CookieSettings_TC002_Pages.robot

*** Keywords ***
Validate Marketing cookie should be turned On
	Scroll Element Into View    ${PerformanceCookies}
	Scroll Element Into View    ${TargetingCookies}
	Scroll Element Into View    ${MarketingCookies}
    Sleep    10
    Element Attribute Value Should Be       ${MarketingCookieButton}        aria-checked        true
	Capture Page Screenshot