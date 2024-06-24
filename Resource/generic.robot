*** Settings ***
Documentation        To open login page and validate invalid login 
...                  The system specific keywords are created here form our own
...                  domain specific language.The utilized keywords are provided by 
...                  the imported seleniumLibrary.

Library    SeleniumLibrary


*** Variables ***
${username}           rahulshettyacademy
${invalid_pwd}        rahul1234
${valid_pwd}          learning
${url}                https://rahulshettyacademy.com/loginpagePractise/
${country_name}       ind

*** Keywords ***
open Browser with the Mortgage payment url
        Open Browser    ${url}    browser=chrome    options=add_experimental_option("detach",${true})
        Maximize Browser Window
Wait Until Element Is Located On The Webpage
    [Arguments]    ${page_locator}
    Wait Until Element Is Visible    ${page_locator}


Close browser session
    Close Browser