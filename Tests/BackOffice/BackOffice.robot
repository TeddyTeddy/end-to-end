*** Settings ***
Documentation   A test script file testing the back office webpage
Resource        ../../Resources/BackOffice/BackOfficeApp.robot
Resource        ../../Resources/Common/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

# To run
# python -m robot  -d Results/ Tests/BackOffice/BackOffice.robot

*** Variables ***


*** Test Cases ***
Should Be Able to Access "Landing Page"
    [Documentation]  Should Be Able to Access "Landing" Page
    [Tags]  Smoke
    BackOfficeApp.Go To Landing Page





