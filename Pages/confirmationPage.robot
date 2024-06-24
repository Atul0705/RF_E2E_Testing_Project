*** Settings ***
Documentation        All the page objects and keywords of landing page
Library    SeleniumLibrary
Library    Collections
Resource    generic.robot


*** Variables ***
${India}=    India

*** Keywords ***
Enter the country and check terms and conditions
    [Arguments]    ${country_name}
    Input Text    id:country    ${country_name}
    Wait Until Element Is Located On The Webpage       xpath://a[text()='${India}']
    Click Element      xpath://a[text()='${India}']
    Sleep    2
    Click Element        css:.checkbox label

purchase the order and verify purchase
    Click Element    xpath://input[@value='Purchase']
    Page Should Contain     Success!
    


