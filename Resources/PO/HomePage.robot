*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Keywords ***
Load
    Go To  ${TEST_URL}
    Wait Until Page Contains  Mi Amazon.com.mx

Verify Page Loaded
    Wait Until Page Contains  Mi Amazon.com.mx