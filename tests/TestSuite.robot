*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/Login.robot
Resource    ../pages/Common.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/ListProducts.robot
Resource    ../pages/ProductDetail.robot
Resource    ../pages/Purchases.robot
Test Setup     Common.Open New Browser
Test Teardown       Common.Exit Browser


*** Test Cases ***
TC_01 Verify Login Page
    [Documentation]    This is some info about testcase Verify Login Page
    [Tags]       TC_01
    Login.Verify Login Page

TC_02 Verify successfully logged in
    [Documentation]     This is some info about testcase Verify successfully logged in
    [Tags]      TC_02
    Login.Input username       owner@tecdiary.com
    Login.Input password        12345678
    Login.Click on the Login button
    HomePage.Verify Home page

TC_03 Verify List Products
    [Documentation]     This is some info about testcase Verify List Products
    [Tags]      TC_03
    Login.Input username       owner@tecdiary.com
    Login.Input password        12345678
    Login.Click on the Login button
    HomePage.Click to the Products -> List Products
    ListProducts.Verify List Product page
    ListProducts.Verify Product table displayed column


TC_04 Verify view product detail
    [Documentation]     This is some info about testcase Verify view product detail
    [Tags]      TC_04
    Login.Input username       owner@tecdiary.com
    Login.Input password        12345678
    Login.Click on the Login button
    HomePage.Click to the Products -> List Products
    ListProducts.Input text into search box and search Product    Lemon
    ListProducts.Click to the "Lemon" product
    ProductDetail.Verify image Product
    ProductDetail.Verify Barcode and QR Code
    ProductDetail.Verify Name display
    ProductDetail.Verify Brand display
    ProductDetail.Verify Code display
    ProductDetail.Verify Category display
    ProductDetail.Verify Unit display
    ProductDetail.Verify Cost display
    ProductDetail.Verify Price display
    ProductDetail.Verify Tax Rate display
    ProductDetail.Verify Tax Method display
    ProductDetail.Verify Alert Quantity display
    ProductDetail.Verify Product Details Field

TC_09 Verify Purchases List
    [Documentation]     This is some info about testcase Verify Purchases List
    [Tags]      TC_09
    Login.Input username       owner@tecdiary.com
    Login.Input password        12345678
    Login.Click on the Login button
    HomePage.Click to the Purchases -> List Purchase
    Purchases.Verify number of purchases
    Purchases.Verify Reference No order by DESC

