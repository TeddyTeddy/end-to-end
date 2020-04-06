*** Settings ***
Documentation   A test script file testing the front office webpage
Resource        ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource        ../../Resources/Common/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

# To run
# python -m robot  -d Results/ Tests/FrontOffice/FrontOffice.robot

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



