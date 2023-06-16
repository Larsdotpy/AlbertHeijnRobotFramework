*** Settings ***
Documentation    Step definitions for mainpage
Library          SeleniumLibrary
Resource         ../enums/enum.robot

*** Keywords ***
Check new tab 'klantenservice' opened successfully
    Sleep   5
    Switch Window   ${klantenservice_tab_name}
    Wait Until Location Is    ${klantenservice_URL}
    Location Should Be    ${klantenservice_URL}