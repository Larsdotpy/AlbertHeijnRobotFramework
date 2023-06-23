*** Settings ***
Documentation       Step definitions for product searching
Resource            ../enums/enum.robot
Resource            test/stepdefinitions/mainPageStepDefinitions.robot
Resource            test/stepdefinitions/productPagesStepDefinitions.robot
Test Setup          Before Test
Test Teardown       After Test
Library             SeleniumLibrary

*** Variables ***
${melk}     melk

*** Keywords ***
Before Test
    Create Webdriver    Chrome      test/drivers/chrome
    Go to               ${homePage_URL}
    Wait Until Page Contains Element    ${cookie_popup}
    Accept Cookie Popup
    #Cookies need to be accepted for optimal use of the website

After Test
    Delete All Cookies
    Close Browser

*** Test Cases ***
Search for 'Melk' and retrieve all milk products that are displayed
    Search For Product
    Get All Displayed Milk Items