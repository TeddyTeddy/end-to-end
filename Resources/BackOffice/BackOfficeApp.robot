*** Settings ***
Documentation  Provides the high level keywords for testing BackOffice application
Resource       ./PO/LandingPage.robot
Resource       ./PO/TopNavSection.robot

*** Variables ***
${URL}         http://www.robotframeworktutorial.com/back-office/

*** Keywords ***
Go To Landing Page
    LandingPage.Do Goto    ${URL}
    LandingPage.Verify Loaded



