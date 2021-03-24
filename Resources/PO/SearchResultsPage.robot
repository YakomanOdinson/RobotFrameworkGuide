*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Keywords ***

Verify Search Completed
    Wait Until Page Contains  resultados para "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first result of the search
    Click Link  css=#result_0 a.s-access-detail-page