*** Settings ***
Documentation        All the page objects and keywords of landing page
Library    SeleniumLibrary
Library    Collections
Resource    generic.robot

*** Variables ***
${Error_msg}=        css:.alert.alert-danger.col-md-12


*** Keywords ***
Fill the login form
    [Arguments]        ${username}    ${password}
    Input Text         id:username    ${username}
    Input Password     id:password    ${password}
    Click Button       id:signInBtn


verify error message is correct
    Element Text Should Be   ${Error_msg}    Incorrect username/password.

Fill the form with valid details and select user option
     Input Text         id:username     rahulshettyacademy
     Input Password     id:password     learning
     Click Element      css:input[value='user']
     Wait Until Element Is Visible    css:.modal-body
     Click Element      id:okayBtn
     Select From List By Value    xpath:(//*[@class='form-control'])[3]    teach
     Select Checkbox    id:terms