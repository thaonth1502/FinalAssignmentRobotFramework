*** Settings ***
Library     SeleniumLibrary
Library    Collections
Variables       locators/purchases.py

*** Keywords ***
Verify number of purchases
    Wait Until Element Is Visible    ${table_purchases}
    Sleep    2
    ${items}=   Get WebElements    ${table_purchases}
    ${numberItems}=     Get Length    ${items}
    Should Be Equal As Integers    ${numberItems}    9

Verify Reference No order by DESC
    Wait Until Element Is Visible    ${table_purchases}
    Sleep    2
    ${actual_List_ReferenceNo}=    Create List
    ${elements}=    Get WebElements    ${table_purchases_ReferenceNo}
    FOR    ${element}    IN    ${elements}
           ${referenceNo}=      Get Text    ${element}
           Log      ${referenceNo}
           Append To List    ${actual_List_ReferenceNo}     ${referenceNo}
    END
    ${tempList}=      Copy List   ${actual_List_ReferenceNo}
    ${expected_List_ReferceNo}=     Reverse List    ${tempList}
    Lists Should Be Equal    ${actual_List_ReferenceNo}    ${expected_List_ReferceNo}





    
