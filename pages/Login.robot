*** Settings ***
Library    SeleniumLibrary
Variables    locators/logIn.py

*** Keywords ***
Verify Login Page
    page should contain         Please login to your account.
    element should be visible   ${userName}
    element should be visible   ${password}
    element should be visible   ${btn_Login}
    element should be visible   ${rememberMe}

Click on the Login button
    Click Button    ${btn_Login}
Input username
    [Arguments]                         ${user}
    Wait Until Element Is Visible       ${userName}
    Clear Element Text                  ${userName}
    Input Text                          ${userName}         ${user}
Input password
    [Arguments]                         ${pass}
    Wait Until Element Is Visible       ${password}
    Clear Element Text                  ${password}
    Input Text                          ${password}         ${pass}
