*** Settings ***
Documentation       Step definitions for login page
Resource            ../enums/enum.robot
Resource            test/stepdefinitions/mainPageStepDefinitions.robot
Resource            test/stepdefinitions/loginPageStepDefinitions.robot
Test Setup          Before Test
Test Teardown       After Test
Library             SeleniumLibrary


*** Keywords ***
Before Test
    Create Webdriver    Chrome      test/drivers/chrome
    Go to               ${homePage_URL}
    Maximize Browser Window
    #Browser window needs to be maximized to show the login button
    Wait Until Page Contains Element    ${cookie_popup}
    Accept Cookie Popup
    #Cookies need to be accepted for optimal use of the website

After Test
    Delete All Cookies
    Close Browser

*** Test Cases ***
Invalid login   #Testcase fails due to anti-bot protection with Captcha validation
    Open Login Page
    Enter Invalid Email
    Enter Invalid Password
    Click Login Button
    Error Message Is Displayed

Navigate back to homepage from loginpage
    Open Login Page
    Navigate To Homepage
    Check new tab 'homepage' opened successfully
