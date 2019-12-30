*** Settings ***
Documentation   A test script file testing the front office webpage
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

*** Variables ***


*** Test Cases ***
Should Be Able to Access "Team" Page
    [Documentation]  Should Be Able to Access "Team" Page
    [Tags]  Smoke
    Log     Should Be Able to Access "Team" Page

"Team Page" Should Match The Requirements
    [Documentation]  "Team Page" Should Match The Requirements
    [Tags]  Smoke
    Log     "Team Page" Should Match The Requirements


