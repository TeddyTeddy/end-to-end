*** Settings ***
Documentation  Provides the high level keywords for testing FrontOffice application
Resource       ./PO/FrontOffice.LandingPage.robot
Resource       ./PO/FrontOffice.TeamSection.robot
Resource       ./PO/FrontOffice.TopNavSection.robot
Resource        ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Go To Landing Page
    FrontOffice.LandingPage.Do Goto    ${FRONT_OFFICE_URL}
    FrontOffice.LandingPage.Verify Loaded
    FrontOffice.TopNavSection.Do Verify "TEAM" Item Exists

Select "TEAM" Item
    FrontOffice.TopNavSection.Do Select "TEAM" Item
    FrontOffice.TeamSection.Do Verify "Team Section" Contents

