*** Settings ***
Documentation  Demo for robot framework guide
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test
*** Variables ***

*** Test Cases ***
My very first Robot Framework test
    [Documentation]  This is the first script created using RF
    [Tags]  FirstScript
    [Setup]
    [Teardown]
    Create Webdriver  Chrome
    Go To  https://www.amazon.com.mx/
    Wait Until Page Contains  Hola, Identifícate
    Input Text  id=twotabsearchtextbox  World of Warcraft
    Click Button  xpath=//input[@id='nav-search-submit-button']
    Wait Until Page Contains  resultados para "World of Warcraft"
    Click Element  xpath=//img[@class='s-image'][@srcset]
    Wait Until Page Contains  Volver a resultados
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Agregado al carrito
    Click Link  Proceder al pago (1 artículo)
    Title Should Be  Amazon Iniciar sesión
    Close Browser

First script refactor: User:Defined keywords
    [Tags]  Refactor  Keywords
    Search Products
    Select Product
    Add to Cart
    Start Checkout

*** Keywords ***
Search Products
    Input Text  id=twotabsearchtextbox  World of Warcraft
    Click Button  xpath=//input[@id='nav-search-submit-button']
    Wait Until Page Contains  resultados para "World of Warcraft"

Select Product
    Click Element  xpath=//img[@class='s-image'][@srcset]
    Wait Until Page Contains  Volver a resultados

Add to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Agregado al carrito

Start Checkout
    Click Link  Proceder al pago (1 artículo)
    Title Should Be  Amazon Iniciar sesión

Begin Web Test
    Create Webdriver  Chrome
    Go To  https://www.amazon.com.mx/
    Wait Until Page Contains  Hola, Identifícate

End Web Test
    Close Browser