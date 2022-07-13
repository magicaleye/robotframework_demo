***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***

### Account information ###
Go to Account Information page
    Run Keyword And Ignore Error    Click Element     ${DB_BTN_AccountInfo} 

Verify data in the first name field displayed correctly
    Get element attribute and compare  ${DB_TXT_FirstName}  value  ${firstName}

Verify data in the middle name field displayed correctly
    Get element attribute and compare  ${DB_TXT_MiddleName}  value  ${middlename}    

Verify data in the last name field displayed correctly
    Get element attribute and compare  ${DB_TXT_LastName}  value  ${lastname}

Verify data in the email field displayed correctly
    Get element attribute and compare  ${DB_TXT_Email}  value  ${username}

### Wishlist ###
Verify product added to wishlist successfully
    [Arguments]         ${productName}
    Element should be visible       xpath://span[contains(text(), '${productName} has been added to your wishlist')]

Click share Wishlist button
    Click Element       ${DB_BTN_ShareWishlist}

Enter share wishlist email and message
    [Arguments]         ${email}        ${message}
    Input Text          ${DB_IF_EmailToShare}       ${email}
    Input Text          ${DB_IF_ShareMessage}       ${message}

Verify wishlist shared successfully
    Element should be visible       ${DB_TXT_WishlistShared}   

Verify my wishlist page have item
    [Arguments]         ${productName}
    Get element attribute and compare  xpath://h3[@class='product-name']/a  title  ${productName}

Remove item from wishlist
    [Arguments]         ${productName}
    Click Element       xpath://a[@title='${productName}']/../..//a[@title='Remove Item']   
    Handle Alert        action=ACCEPT




