*** Settings ***
Documentation  Represents the "team section" within the Landing Page. Contains keywords for the team section
Library        SeleniumLibrary

*** Variables ***
${TEAM_SECTION_HEADER2_LOCATOR}     css=#team > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1)
${TEAM_SECTION_HEADER2_CONTENT}      OUR AMAZING TEAM

*** Keywords ***
Do Verify "Team Section" Contents
    Element Should Contain          ${TEAM_SECTION_HEADER2_LOCATOR}     ${TEAM_SECTION_HEADER2_CONTENT}


