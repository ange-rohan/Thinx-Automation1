*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${ThinxHomepage}            https://www.thinx.com/
${LoginPage}                https://www.thinx.com/account/login
${CartPage}                 https://www.thinx.com/?cart=open   
${CollectionsPage}          https://www.thinx.com/collections/shop-all
${RegistrationPage}         https://www.thinx.com/account/register
${AccountPage}              https://www.thinx.com/account  
${404Url}                   https://www.thinx.com/pages/404 
${ThinxPDP}                 https://www.thinx.com/products/period-all-night-ultra-soft-sleep-shorts?variant=40174028750920

*** Keywords ***
Open Thinx Homepage Using Chrome Browser
	Open Browser    ${ThinxHomepage}   Chrome
	Maximize Browser Window

Open Thinx Login Page Using Chrome Browser
	Open Browser    ${LoginPage}   Chrome
	Maximize Browser Window

Open Thinx Cart Using Chrome Browser
    Open Browser    ${CartPage}     Chrome
    Maximize Browser Window

Open Thinx Account Registration Page Using Chrome Browser
    Open Browser    ${RegistrationPage}      Chrome
    Maximize Browser Window

Open Thinx Collections Page Using Chrome Browser
    Open Browser    ${CollectionsPage}      Chrome
    Maximize Browser Window

Open Invalid URL to validate 404 error page
    Open Browser    ${404Url}    Chrome
    Maximize Browser Window
    Sleep    5

Open Thinx PDP Using Chrome Browser
    Open Browser     ${ThinxPDP}    Chrome
    Maximize Browser Window
    Sleep     5