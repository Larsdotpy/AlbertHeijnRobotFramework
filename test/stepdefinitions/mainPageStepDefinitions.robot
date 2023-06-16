*** Settings ***
Documentation    Step definitions for mainpage
Library          SeleniumLibrary
Resource         test/pages/mainpage.robot
Resource         ../enums/enum.robot


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

Decline socal media cookies
    Click Element

Decline personalised ads cookies
    Click Element

Confirm cookie settings
    Click Element    ${confirm_cookie_settings_btn}

Open privacybeleid
    Click Element         ${privacybeleid_btn}
    Location Should Be    ${privacybeleid_url}

Open cookiebeleid
    Click Element         ${cookiebeleid_btn}
    Location Should Be    ${cookiebeleid_url}

Open feedback form
    Wait Until Page Contains Element    ${open_feedback_btn}
    Click Element                       ${open_feedback_btn}

Select 'Deze specifieke pagina'
    Click Element   ${deze_specifieke_pagina_btn}

Select 'De gehele website'
    Click Element   ${de_gehele_website_btn}

Select 'Aanbod en beschikbaarheid van producten'
    Click Element   ${aanbod_en_beschikbaarheid_van_producten_btn}

Select 'De Albert Heijn app'
    Click Element    ${de_albert_heijn_app_btn}

Select 'Anders'
    Click Element    ${anders_btn}

Select 5 star rating
    Click Element    ${5_star_rating_btn}

Select 4 star rating
    Click Element    ${4_star_rating_btn}

Select 3 star rating
    Click Element    ${3_star_rating_btn}

Select 2 star rating
    Click Element    ${2_star_rating_btn}

Select 1 star rating
    Click Element    ${1_star_rating_btn}

Send mock data feedback
    Input Text        ${feedback_input_field}   test

Select screenshot
    Click Element    ${feedback_screenshot_btn}
    Click Element    ${home_logo_btn}

Send feedback form
    Click Element    ${verstuur_feedback_btn}

Open 'klantenservice pagina'
    Click Element        ${klantenservice_pagina_btn}