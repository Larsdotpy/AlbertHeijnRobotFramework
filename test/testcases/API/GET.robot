*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             JSONLibrary
Library             Collections
Resource            ../../enums/enum.robot
Resource            test/stepdefinitions/GETstepDefinitions.robot
Documentation       API testing
Test Setup          Setup

*** Keywords ***
Setup
    [Tags]    Regression
    Create Session    session_one   ${homePage_URL}



*** Test Cases ***
Do a GET Request and validate the response code to be 200
    ${response}=    GET On Session    session_one   /
    Status Should Be    200     ${response}

Check if body response contains 'Albert Heijn'
    ${response}=    GET On Session    session_one   /
    ${body}=        Convert To String    ${response.content}
    Should Contain    ${body}   Albert Heijn
