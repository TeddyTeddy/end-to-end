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

Verify "TEAM" Item Exists On The Upper Right Corner
    TopNavSection.Do Verify "TEAM" Item Exists

Select "TEAM" Item
    TopNavSection.Do Select "TEAM" Item

Verify "Team Section" Contains Correct Contents
    TeamSection.Do Verify "Team Section" Contents