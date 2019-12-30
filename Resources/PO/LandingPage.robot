*** Settings ***
Documentation  Represents the "Landing Page". Contains keywords for it
Library        SeleniumLibrary

*** Variables ***
${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}         css=.navbar-brand
${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}    RobotFrameworkTutorial.com Test Client

*** Keywords ***
Do Goto
    [Arguments]  ${URL}
    Goto         ${URL}

Verify Loaded
    Wait Until Page Contains Element    ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}
    Element Should Contain              ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}   ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}