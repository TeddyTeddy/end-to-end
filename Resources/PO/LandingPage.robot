*** Settings ***
Documentation  Represents the "Landing Page". Contains keywords for it
Library        SeleniumLibrary

*** Keywords ***
Do Goto
    [Arguments]  ${URL}
    Goto         ${URL}

