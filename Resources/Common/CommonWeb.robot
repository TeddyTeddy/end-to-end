*** Settings ***
Documentation   Contains keywords that are app independent
Library         SeleniumLibrary

*** Variables ***
${BROWSER}      firefox

*** Keywords ***
Test Setup
    [Documentation]  Opens a blank browser, whose screen area is maximized to whole window
    Open Browser     about:blank     ${BROWSER}
    Maximize Browser Window

Test Teardown
    Close Browser




