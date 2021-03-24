*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Volver a los resultados de búsqueda

Add Product to Cart
    Click Button  id=add-to-cart-button