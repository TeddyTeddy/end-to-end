*** Settings ***
Documentation  Represents the "team section" within the Landing Page. Contains keywords for the team section
Library        SeleniumLibrary

*** Variables ***
${FRONT_OFFICE_TEAM_SECTION_HEADER2_LOCATOR}      css=#team > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1)
${FRONT_OFFICE_TEAM_SECTION_HEADER2_CONTENT}      OUR AMAZING TEAM

*** Keywords ***
Do Verify "Team Section" Contents
    Wait Until Element Is Visible   ${FRONT_OFFICE_TEAM_SECTION_HEADER2_LOCATOR}
    Element Should Contain          ${FRONT_OFFICE_TEAM_SECTION_HEADER2_LOCATOR}     ${FRONT_OFFICE_TEAM_SECTION_HEADER2_CONTENT}


