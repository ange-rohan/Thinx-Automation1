*** Settings ***
Library    SeleniumLibrary
Library    logging
Library    /Users/angeline.rohan/Desktop/QA Automation_Thinx.robot.py/ThinxAutomation1/Thinx-Automation1/CustomLibrary.py
Resource          ../../pages/CookieSettings/CookieSettings_TC004_Pages.robot


*** Variables ***
${FirstPartyCookies}    xpath: //button[@aria-label='First Party Cookies View Cookies']
${FirstPartyCookiesDetails}     xpath: (//li[@class='ot-host-info'])[1]
${BackBtn}      css: #onetrust-consent-sdk #ot-pc-lst .back-btn-handler
${URL}        https://www.thinx.com/


*** Keywords ***



