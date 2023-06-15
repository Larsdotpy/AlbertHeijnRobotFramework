*** Settings ***
Documentation    Step definitions for mainpage
Library          SeleniumLibrary
Resource         test/pages/mainpage.robot

*** Keywords ***
Cookie popup is displayed
    Wait Until Page Contains Element    ${cookie_popup}

Accept cookie popup
    Click Element    ${cookie_accept_btn}

Decline cookie popup
    Click Element    ${cookie_decline_btn}

Open cookie settings
    Click Element   ${cookie_settings_btn}

Accept social media cookies
    Click Element    ${accept_socialmedia_cookies_btn}

Accept personalised ads cookies
    Click Element    ${accept_personalised_ads_cookies_btn}

Confirm cookie settings
    Click Element    ${confirm_cookie_settings_btn}



