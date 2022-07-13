***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
### Common ###
Go to product details page
    [Arguments]         ${productName}
    Click Element       xpath://a[contains(text(), '${productName}')]

### Pricing ###
Get a mobile product price from list
    [Arguments]     ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5
    ${price1}=   Get Text    xpath://a[contains(text(), '${productName}')]/../..//span[@class='price']
    Set Test Variable       $price1

Get price from product details page
    [Arguments]     ${productName}
    Click Element       xpath://a[contains(text(), '${productName}')]
    ${price2}=   Get Text    ${PP_TXT_ProductPrice}
    Set Test Variable       $price2

Price from list and product details page should be equal
    Should Be Equal     ${price1}   ${price2}

### Comparison ###
Add product to compare
    [Arguments]         ${productName}  
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5
    Click Element       xpath://a[contains(text(), '${productName}')]/../..//a[contains(text(), 'Add to Compare')] 

Check product has been added to comparison list message
    [Arguments]         ${productName}  
    Element Should be Visible       xpath://span[contains(text(), '${productName} has been added to comparison list')]

Click Comparise product button
    Click Element       ${PP_BTN_Compare}

Verify product reflected in comparison Window
    [Arguments]         ${productName}      ${price}    ${SKU}
    Page Should Contain         ${productName}
    Page Should Contain Image   xpath://a[@class='product-image' and @title='${productName}']/img
    Page Should Contain         ${price}
    Page Should Contain         ${SKU}


Click close window button
    Click Element       ${PP_BTN_CloseWindow}

### Wishlist ###
Add product to wishlist
    [Arguments]         ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5
    Click Element       xpath://a[contains(text(), '${productName}')]/../..//a[contains(text(), 'Add to Wishlist')] 

### Reviewing ###
Click add review button
    Click Element       ${PP_BTN_AddReview}

Rate product
    [Arguments]     ${rating}
    Click Element       id:Quality 1_${rating}  

Click submit review button
    Click Element       ${PP_BTN_SubmitReview}

Enter required information for review
    [Arguments]     ${thought}      ${summary}      ${nickname}
    Input Text      ${PP_IF_ReviewField}        ${thought}    
    Input Text      ${PP_IF_SummaryField}        ${summary}    
    Input Text      ${PP_IF_NicknameField}        ${nickname}    

Verify Required field error showing under field
    [Arguments]     ${field}
    Element should be visible       xpath://label[contains(text(), '${field}')]/..//div[contains(text(), 'required field')]

Verify review accepted for moderation message
    Element should be visible       ${PP_TXT_ReviewAccepted}


    

