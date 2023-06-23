*** Settings ***
Resource         ../enums/enum.robot
Library          RequestsLibrary




*** Keywords ***
Homepage returns Statuscode 200
    ${response}    GET On Session  ${homePage_URL}
    Should Be Equal As Strings    ${response.status_code}    200