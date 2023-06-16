*** Settings ***
Resource            ../enums/enum.robot
Resource            test/stepdefinitions/mainPageStepDefinitions.robot
Test Setup          Before Test
Test Teardown       After Test
Library             SeleniumLibrary


*** Keywords ***
Before Test
    Create Webdriver    Chrome      test/drivers/chrome
    Go to               ${homePage_URL}

After Test
    Delete All Cookies
    Close Browser

*** Test Cases ***
Cookie popup is shown
    Cookie popup is displayed

User accepts cookie popup
    Accept Cookie Popup

User declines cookie popup
    Decline Cookie Popup

User opens cookie settings
    Open Cookie Settings

User accepts social media and personalised ads cookies
    Accept Social Media Cookies
    Accept Personalised Ads Cookies
    Confirm Cookie Settings

User declines social media and personalised ads cookies
    Decline Socal Media Cookies
    Decline Personalised Ads Cookies
    Confirm Cookie Settings

User opens 'Privacybeleid' from cookie popup
    Open Privacybeleid

User opens 'Cookiebeleid' from cookie popup
    Open Cookiebeleid