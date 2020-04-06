*** Settings ***
Documentation  Represents the "Landing Page". Contains keywords for it
Library        SeleniumLibrary

*** Variables ***
${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}         xpath=//div[@id="wrapper"]/nav/div[1]/a
${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}    RobotFrameworkTutorial.com Demo Admin Site

*** Keywords ***
Do Goto
    [Arguments]  ${URL}
    Goto         ${URL}

Verify Loaded
    Wait Until Page Contains Element    ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}
    Element Should Contain              ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}   ${LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}