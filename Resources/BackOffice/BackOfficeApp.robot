*** Settings ***
Documentation  Provides the high level keywords for testing BackOffice application
Resource       ./PO/BackOffice.LandingPage.robot
Resource       ./PO/BackOffice.TopNavSection.robot
Resource        ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Go To Landing Page
    BackOffice.LandingPage.Do Goto    ${BACK_OFFICE_URL}
    BackOffice.LandingPage.Verify Loaded



