*** Settings ***
Documentation    To validate login page
Library    SeleniumLibrary
Library    Collections
Test Setup    open Browser with the Mortgage payment url
Test Teardown    Close Browser Session
Resource    ../Resource/generic.robot
Resource    ../Pages/landingPage.robot
Resource    ../Pages/shopPage.robot
Resource    ../Pages/checkOut.robot
Resource    ../Pages/confirmationPage.robot


*** Test Cases ***
Validate Unsuccessful login
    landingPage.Fill the login form     ${username}    ${invalid_pwd}
    generic.Wait Until Element Is Located On The Webpage  ${Error_msg}
    landingPage.verify error message is correct

Validates cards display on the page after successfully login
    landingPage.Fill The Login Form    ${username}    ${valid_pwd}
    generic.Wait Until Element Is Located On The Webpage  ${Shop_page_load}
    shopPage.Verify Cart Title Shown In Webpage
    shopPage.Select the cart and proceed to checkout
    checkOut.verify the item added with the shown item in checkout
    checkOut.click on checkout button
    confirmationPage.Enter the country and check terms and conditions     ${country_name}
    confirmationPage.purchase the order and verify purchase

Select the form and navigate to the child window
    landingPage.Fill the form with valid details and select user option


    

    



