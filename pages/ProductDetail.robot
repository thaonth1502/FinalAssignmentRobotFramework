*** Settings ***
Library     SeleniumLibrary
Library     Collections
Variables   locators/productDetail.py


*** Keywords ***
Verify image Product
    Wait Until Element Is Visible    ${productImage}
    Element Should Be Visible    ${productImage}

Verify Barcode and QR Code
    Wait Until Element Is Visible    ${barcodAndQrCode}
    Element Should Be Visible        ${barcodAndQrCode}

Verify Type display
    Wait Until Element Is Visible    ${label_Type}
    Element Should Be Visible        ${label_Type}
    Wait Until Element Is Visible    ${value_Type}
    Element Should Be Visible        ${value_Type}

Verify Name display
    Wait Until Element Is Visible    ${label_Name}
    Element Should Be Visible        ${label_Name}
    Wait Until Element Is Visible    ${value_Name}
    Element Should Be Visible        ${value_Name}

Verify Code display
    Wait Until Element Is Visible    ${label_Code}
    Element Should Be Visible        ${label_Code}
    Wait Until Element Is Visible    ${value_Code}
    Element Should Be Visible        ${value_Code}

Verify Category display
    Wait Until Element Is Visible    ${label_Category}
    Element Should Be Visible        ${label_Category}
    Wait Until Element Is Visible    ${value_Category}
    Element Should Be Visible        ${value_Category}

Verify Unit display
    Wait Until Element Is Visible    ${label_Unit}
    Element Should Be Visible        ${label_Unit}
    Wait Until Element Is Visible    ${value_Unit}
    Element Should Be Visible        ${value_Unit}

Verify Cost display
    Wait Until Element Is Visible    ${label_Cost}
    Element Should Be Visible        ${label_Cost}
    Wait Until Element Is Visible    ${value_Cost}
    Element Should Be Visible        ${value_Cost}

Verify Price display
    Wait Until Element Is Visible    ${label_Price}
    Element Should Be Visible        ${label_Price}
    Wait Until Element Is Visible    ${value_Price}
    Element Should Be Visible        ${value_Price}

Verify Tax Rate display
    Wait Until Element Is Visible    ${label_Tax_Rate}
    Element Should Be Visible        ${label_Tax_Rate}
    Wait Until Element Is Visible    ${value_Tax_Rate}
    Element Should Be Visible        ${value_Tax_Rate}

Verify Tax Method display
    Wait Until Element Is Visible    ${label_Tax_Method}
    Element Should Be Visible        ${label_Tax_Method}
    Wait Until Element Is Visible    ${value_Tax_Method}
    Element Should Be Visible        ${value_Tax_Method}

Verify Alert Quantity display
    Wait Until Element Is Visible    ${label_Alert_Quantity}
    Element Should Be Visible        ${label_Alert_Quantity}
    Wait Until Element Is Visible    ${value_Alert_Quantity}
    Element Should Be Visible        ${value_Alert_Quantity}

Verify Brand display
    Wait Until Element Is Visible    ${label_Brand}
    Element Should Be Visible        ${label_Brand}

Verify Product Details Field
    Wait Until Element Is Visible    ${productDetail}
    Element Should Be Visible        ${productDetail}





