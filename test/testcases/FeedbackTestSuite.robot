*** Settings ***
Resource            ../enums/enum.robot
Resource            test/stepdefinitions/mainPageStepDefinitions.robot
Resource            test/stepdefinitions/customerServiceStepDefinitions.robot
Test Setup          Before Test
Test Teardown       After Test
Library             SeleniumLibrary


*** Keywords ***
Before Test
    Create Webdriver    Chrome      test/drivers/chrome
    Go to               ${homePage_URL}
    Wait Until Page Contains Element    ${cookie_popup}
    Accept Cookie Popup
    #To make the feedback form btn appear, cookies need to be accepted.

After Test
    Delete All Cookies
    Close Browser

*** Test Cases ***
User gives a 5 star feedback on 'Deze specifieke pagina' categories
    Open Feedback Form
    Select 'Deze Specifieke Pagina'
    Select 5 Star Rating
    Send Mock Data Feedback
    Select Screenshot
    Send Feedback Form

User gives a 4 star feedback on 'De gehele website' categories
    Open Feedback Form
    Select 'De Gehele Website'
    Select 4 Star Rating
    Send Mock Data Feedback
    Select Screenshot
    Send Feedback Form

User gives a 3 star feedback on 'Aanbod en beschikbaarheid van producten' categories
    Open Feedback Form
    Select 'De Gehele Website'
    Select 3 Star Rating
    Send Mock Data Feedback
    Select Screenshot
    Send Feedback Form

User gives a 2 star feedback on 'De Albert Heijn app' categories
    Open Feedback Form
    Select 'De Gehele Website'
    Select 2 Star Rating
    Send Mock Data Feedback
    Select Screenshot
    Send Feedback Form

User gives a 1 star feedback on 'Anders' categories
    Open Feedback Form
    Select 'De Gehele Website'
    Select 1 Star Rating
    Send Mock Data Feedback
    Select Screenshot
    Send Feedback Form

User opens 'klantenservice pagina' from feedback form
    Open Feedback Form
    Open 'klantenservice Pagina'
    Check New Tab 'klantenservice' Opened Successfully