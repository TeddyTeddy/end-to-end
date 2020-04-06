*** Settings ***
Documentation  Provides the high level keywords for testing FrontOffice application
Resource       ./PO/LandingPage.robot
Resource       ./PO/TeamSection.robot
Resource       ./PO/TopNavSection.robot

*** Variables ***
${URL}         http://www.robotframeworktutorial.com/front-office/

*** Keywords ***
Go To Landing Page
    LandingPage.Do Goto    ${URL}
    LandingPage.Verify Loaded
    TopNavSection.Do Verify "TEAM" Item Exists

Select "TEAM" Item
    TopNavSection.Do Select "TEAM" Item
    TeamSection.Do Verify "Team Section" Contents

