***Settings***
Library     SeleniumLibrary
Library     String
Resource    ../../import/import.robot

***Keywords***
Go to advanced search page
    Wait until element visible and click  ${BTN_AdvancedSearch}  5

Input price range
    [Arguments]     ${minPrice}    ${maxPrice}
    Wait until element is visible       xpath://h2[contains(text(), 'Search Settings')]
    Input Text      ${AS_IF_MinPrice}      ${minPrice}
    Input Text      ${AS_IF_MaxPrice}      ${maxPrice}
    Set Test Variable   ${minPrice}
    Set Test Variable   ${maxPrice}

Click search button
    Click Element       ${AS_BTN_Search}

Verify product names are fetched
    Wait until element is visible       xpath://h1[contains(text(), 'Catalog Advanced Search')]
    ${count}=   Get Element Count   ${AS_RESULT_TXT_ProductName}
    Should be True  ${count} > 0

Verify product price are fetched
    Wait until element is visible       xpath://h1[contains(text(), 'Catalog Advanced Search')]
    ${count}=   Get Element Count   ${AS_RESULT_TXT_ProductPrice}
    Should be True  ${count} > 0    

Verify product price in search result are correct 
    ${count}=   Get Element Count   ${AS_RESULT_TXT_ProductPrice}
    FOR     ${i}    IN RANGE    1   ${count}
        ${actualPrice}=     Get actual price  xpath:(//span[@class='price'])[${i}]  
        Log To Console      Price: ${actualPrice}
        Should be True      ${minPrice} <= ${actualPrice} <= ${maxPrice}
    END    