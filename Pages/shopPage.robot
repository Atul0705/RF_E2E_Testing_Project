*** Settings ***
Documentation        All the page objects and keywords of landing page
Library    SeleniumLibrary
Library    Collections
Resource    generic.robot

*** Variables ***
${Shop_page_load}    css:.nav-link
${item_name}=    Blackberry


*** Keywords ***
Verify Cart Title Shown In Webpage
    @{Expected_list}=          Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry
    @{web_list}=   Get Webelements    css:.card-title
    @{actual_list}=    Create List
    FOR  ${element}  IN  @{web_list}
        Log   ${element.text}
        Append To List     ${actual_list}    ${element.text}
    END
    Lists Should Be Equal    ${actual_list}    ${Expected_list}

Select the cart and proceed to checkout
    ${index}=    Set Variable    1
    @{web_list}=   Get Webelements    css:.card-title
     FOR  ${element}  IN  @{web_list}
        Exit For Loop If    '${item_name}' == '${element.text}'
        ${index}=    Evaluate     ${index}+1
     END

    Click Button    xpath:(//*[@class='btn btn-info'])[${index}]
    Click Element    xpath://a[@class='nav-link btn btn-primary']


