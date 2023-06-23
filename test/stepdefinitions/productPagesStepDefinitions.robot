*** Settings ***
Documentation    Step definitions for product pages
Library          SeleniumLibrary
Resource         test/pages/mainpage.robot
Resource         ../enums/enum.robot

*** Variables ***
@{locator}          title_root__xSlPL product-card-landscape_title__DHgXm
${text}             class:title_root__xSlPL product-card-landscape_title__DHgXm

*** Keywords ***
Get all displayed milk items
    Wait Until Element Is Visible    ${text}
    Get Text  ${text}
    Log    ${text}

