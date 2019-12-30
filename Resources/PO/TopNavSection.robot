*** Settings ***
Documentation  Represents the "navigation section" within the Landing Page. Contains keywords for the team section
Library        SeleniumLibrary

*** Variables ***
${TOPNAV_SECTION_TEAM_ITEM}     css= ul[class="nav navbar-nav navbar-right"] > li:nth-child(5) > a:nth-child(1)
${TEAM_TEXT}                    TEAM

*** Keywords ***
Do Verify "TEAM" Item Exists
    Wait Until Element Is Visible       ${TOPNAV_SECTION_TEAM_ITEM}     timeout=10s
    Element Should Contain              ${TOPNAV_SECTION_TEAM_ITEM}     ${TEAM_TEXT}

Do Select "TEAM" Item
    Click Element                       ${TOPNAV_SECTION_TEAM_ITEM}
