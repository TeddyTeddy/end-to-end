*** Settings ***
Documentation  Represents the "Landing Page". Contains keywords for it
Library        SeleniumLibrary

*** Variables ***
${FRONT_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}         css=.navbar-brand
${FRONT_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}    RobotFrameworkTutorial.com Test Client

*** Keywords ***
Do Goto
    [Arguments]  ${URL}
    Goto         ${URL}

Verify Loaded
    Wait Until Page Contains Element    ${FRONT_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}
    Element Should Contain              ${FRONT_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}   ${FRONT_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}