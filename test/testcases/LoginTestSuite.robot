*** Settings ***
Documentation       Step definitions for login page
Resource            ../enums/enum.robot
Resource            test/stepdefinitions/mainPageStepDefinitions.robot
Resource            test/stepdefinitions/loginPageStepDefinitions.robot
Resource            test/pages/loginpage.robot
Test Setup          Before Test
Test Teardown       After Test
Library             SeleniumLibrary
Test Template       (In)valid login


*** Keywords ***
Before Test
    Create Webdriver    Chrome      test/drivers/chrome
    Go to               ${homePage_URL}
    Maximize Browser Window
    #Browser window needs to be maximized to show the login button
    Wait Until Page Contains Element    ${cookie_popup}
    Accept Cookie Popup

After Test
    Delete All Cookies
    Close Browser



*** Test Cases ***      email                           password
Invalid email           Invalid@test.com                ValidPassword!
Invalid password        kxtshnujsdbtxatyfb@bbitf.com    1234
Special characters      @#!%^&*()@test.com              ValidPassword!
Numbers only            12345678@test.com               123456789010
#Valid login             kxtshnujsdbtxatyfb@bbitf.com    Testpassword!

*** Keywords ***
Invalid login
    [Arguments]    ${email}     ${password}
    Open Login page
    Fill The Login Form    ${email}     ${password}
    Error Message Is Displayed

Fill the login form
    [Arguments]    ${email}      ${password}
    Input Text    ${email_input_field_login}   ${email}
    Input Text    ${password_input_field_login}   ${email}
    Click Button  ${login_btn}

Error message is displayed
    Wait Until Element Is Visible    ${invalid_email_password_msg}
    Element Should Be Visible        ${invalid_email_password_msg}