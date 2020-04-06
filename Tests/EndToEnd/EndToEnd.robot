*** Settings ***
Documentation   A test script file testing both the front and the back office webpages
Resource        ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource        ../../Resources/BackOffice/BackOfficeApp.robot
Resource        ../../Resources/Common/CommonWeb.robot

Test Setup      CommonWeb.Test Setup
Test Teardown   CommonWeb.Test Teardown

# To run
# python -m robot  -d Results/ Tests/EndToEnd/EndToEnd.robot

*** Variables ***


*** Test Cases ***
Should Be Able to Access Both Front Office And BackOffice
    [Documentation]  Should Be Able to Access "Landing" Page on both sites
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    BackOfficeApp.Go To Landing Page





