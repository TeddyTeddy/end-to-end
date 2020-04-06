*** Settings ***
Documentation   A test script file testing the front office webpage
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

# To run
# python -m robot  -d Results/ Tests/FrontOffice.robot

*** Variables ***


*** Test Cases ***
Should Be Able to Access "Landing Page"
    [Documentation]  Should Be Able to Access "Team" Page
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page

"Team Section" Should Match The Requirements
    [Documentation]  "Team Section" Should Match The Requirements
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Select "TEAM" Item



