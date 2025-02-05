*** Settings ***
Library    SeleniumLibrary
Resource          ../../tests/CookieSettings/CookieSettings_TC005_Test.robot
Resource          ../../tests/CookieSettings/CookieSettings_TC004_Test.robot


*** Test Cases ***
Reject Cookies And Check Console Logs
    Reject All Cookies
	Reject Cookies And Check Console Logs  browser  load:delghtd