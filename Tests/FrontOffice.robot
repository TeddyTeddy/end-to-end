*** Settings ***
Documentation   A test script file testing the front office webpage
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

*** Variables ***


*** Test Cases ***
Should Be Able to Access "Landing Page"
    [Documentation]  Should Be Able to Access "Team" Page
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Verify "TEAM" Item Exists On The Upper Right Corner

"Team Section" Should Match The Requirements
    [Documentation]  "Team Section" Should Match The Requirements
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Verify "TEAM" Item Exists On The Upper Right Corner
    FrontOfficeApp.Select "TEAM" Item
    FrontOfficeApp.Verify "Team Section" Contains Correct Contents


