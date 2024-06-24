*** Settings ***
Documentation        All the page objects and keywords of landing page
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${item_name}=    Blackberry


*** Keywords ***
verify the item added with the shown item in checkout
   ${item_list}=    Get Text          css:h4
   Should Be Equal As Strings        ${item_list}    ${item_name}

click on checkout button
    Click Element    css:.btn.btn-success


