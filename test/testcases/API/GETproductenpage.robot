*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             JSONLibrary
Library             Collections
Library             BuiltIn
Library             DateTime
Library             String
Resource            ../../enums/enum.robot
Documentation       API testing
Test Setup          Setup
Test Teardown       Delete All Sessions

*** Keywords ***
Setup
    [Tags]    Regression    API
    Create Session    session_one   ${productenpage_URL}

Shutdown
    Delete All Sessions

*** Test Cases ***
Do a GET Request and validate the response code to be 200
    ${response}=    GET On Session    session_one   /
    Status Should Be    200     ${response}

Check if body response contains 'Aardappel, groente, fruit'
    ${response}=    GET On Session    session_one   /
    ${body}=        Convert To String    ${response.content}
    Should Contain    ${body}   Aardappel, groente, fruit

Check if response time is below 3 seconds
    ${start_time}       Get Current Date    result_format=%Y-%m-%d %H:%M:%S.%f
    ${start_time_unix}  Evaluate  int(time.time() * 1000)
    GET On Session      session_one   /
    ${end_time}         Get Current Date    result_format=%Y-%m-%d %H:%M:%S.%f
    ${end_time_unix}    Evaluate  int(time.time() * 1000)
    ${response_time}    Evaluate  (${end_time_unix} - ${start_time_unix}) / 1000
    Log                 Response time: ${response_time} seconds
    Should Be True      ${response_time} < 2