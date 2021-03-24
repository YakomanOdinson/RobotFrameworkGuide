*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  producto agregado al carrito

Proceed to Checkout
    Click Link  Proceder al pago (1 artículo)