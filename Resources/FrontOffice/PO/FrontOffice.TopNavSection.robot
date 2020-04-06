*** Settings ***
Documentation  Represents the "navigation section" within the Landing Page. Contains keywords for the team section
Library        SeleniumLibrary

*** Variables ***
${FRONT_OFFICE_TOPNAV_SECTION_TEAM_ITEM}     css= ul[class="nav navbar-nav navbar-right"] > li:nth-child(5) > a:nth-child(1)
${FRONT_OFFICE_TOPNAV_SECTION_TEAM_TEXT}                    TEAM

*** Keywords ***
Do Verify "TEAM" Item Exists
    Wait Until Element Is Visible       ${FRONT_OFFICE_TOPNAV_SECTION_TEAM_ITEM}     timeout=10s
    Element Should Contain              ${FRONT_OFFICE_TOPNAV_SECTION_TEAM_ITEM}     ${FRONT_OFFICE_TOPNAV_SECTION_TEAM_TEXT}

Do Select "TEAM" Item
    Click Element                       ${FRONT_OFFICE_TOPNAV_SECTION_TEAM_ITEM}
