*** Settings ***
Documentation  Represents the "Landing Page". Contains keywords for it
Library        SeleniumLibrary

*** Variables ***
${BACK_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}         xpath=//div[@id="wrapper"]/nav/div[1]/a
${BACK_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}    RobotFrameworkTutorial.com Demo Admin Site

*** Keywords ***
Do Goto
    [Arguments]  ${URL}
    Goto         ${URL}

Verify Loaded
    Wait Until Page Contains Element    ${BACK_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}
    Element Should Contain              ${BACK_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER}   ${BACK_OFFICE_LANDING_PAGE_NAVIGATOR_UPPER_LEFT_HEADER_TEXT}