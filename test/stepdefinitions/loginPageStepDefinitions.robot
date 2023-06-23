*** Settings ***
Documentation       Step definitions for login page
Resource            ../enums/enum.robot
Resource            test/pages/loginpage.robot
Resource            test/pages/mainpage.robot
Library             SeleniumLibrary

*** Keywords ***
Enter invalid email
    Input Text    ${email_input_field_login}    invalidEmail@test.com

Enter invalid password
    Input Text    ${password_input_field_login}    1234567890

Click login button
    Click Element    ${login_btn}

Error message is displayed
    Wait Until Element Is Visible    ${invalid_email_password_msg}
    Element Should Be Visible        ${invalid_email_password_msg}

Navigate to homepage
    Wait Until Element Is Visible    ${homepage_logo_btn}
    Click Element                    ${homepage_logo_btn}

Check new tab 'homepage' opened successfully
    Location Should Be    ${homepage_URL}
