*** Settings ***
Library         SeleniumLibrary
Library    XML
Library    OperatingSystem
Library    Collections
Variables       locators/listProducts.py


*** Keywords ***

Verify List Product page
    Page Should Contain    Products (All Warehouses)

Verify Product table displayed column
    Wait Until Element Is Visible    ${header_table}
    ${actualColumnName}=    Create List
    ${elements}=    Get WebElements    ${header_table}
    FOR    ${element}    IN    @{elements}
           ${columnName}=      Get Text    ${element}
           Append To List    ${actualColumnName}     ${columnName}
    END

    ${lenActual}=      Get Length   ${actualColumnName}
    ${lenExpected}=     Get Length    ${expectedColumnName}
    Should Be Equal    ${lenActual}    ${lenExpected}

    FOR    ${i}    IN RANGE    1    ${lenActual}
        Should Be Equal    ${actualColumnName}[${i}]    ${expectedColumnName}[${i}]
    END


Input text into search box and search Product
    [Arguments]     ${text}
    Input Text      ${searchBox}    ${text}
    Press Keys      ${searchBox}     ENTER

Click to the "Lemon" product
    Wait Until Element Is Visible    ${lemonProduct}
    Click Element    ${lemonProduct}

    


