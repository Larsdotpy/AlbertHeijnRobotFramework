*** Settings ***
Resource        test/stepdefinitions/mainPageStepDefinitions.robot
Resource        test/hooks/before_test.robot
Test Setup      Before

*** Test Cases ***
Cookie notification is shown
    Cookie Popup Is Shown

