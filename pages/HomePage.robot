*** Settings ***
Library     SeleniumLibrary
Variables   locators/homePage.py


*** Keywords ***
Verify Home page
    Wait Until Element Is Visible    ${messageLoginSuccess}
    Element Should Contain    ${messageLoginSuccess}      You are successfully logged in.
    Element Should Contain    ${overviewChart}             Overview Chart
    Element Should Contain    ${quickLinks}                Quick Links
    Element Should Contain    ${latestFive}                Latest Five
    Element Should Contain    ${bestSellers}               Best Sellers (Aug-2024)

Click to the Products -> List Products
    Click Element    ${menu_Products}
    Wait Until Element Is Visible    ${menu_Products_ListProducts}
    Click Element    ${menu_Products_ListProducts}
    
Click to the Purchases -> List Purchase
    Click Element    ${menu_Purchases}
    Wait Until Element Is Visible    ${menu_Purchases_ListPurchases}
    Click Element    ${menu_Purchases_ListPurchases}
    
