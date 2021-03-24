*** Settings ***
Library  SeleniumLibrary
*** Keywords ***

Begin Web Test
    Create Webdriver  ${BROWSER}
End Web Test
    Close Browser