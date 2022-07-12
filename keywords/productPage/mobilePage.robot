***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
Get a mobile product price from list
    [Arguments]     ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5s
    ${price1}=   Get Text    xpath://a[contains(text(), '${productName}')]/../..//span[@class='price']
    Set Test Variable       $price1

Get price from product details page
    [Arguments]     ${productName}
    Click Element       xpath://a[contains(text(), '${productName}')]
    ${price2}=   Get Text    ${MB_TXT_ProductPrice}
    Set Test Variable       $price2

Price from list and product details page should be equal
    Should Be Equal     ${price1}   ${price2}

Add a product to cart
    [Arguments]     ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5s
    Click Element       xpath://a[contains(text(), '${productName}')]/../..//button[@title='Add to Cart']

Apply discount code
    [Arguments]     ${couponCode}
    Click and input Text  ${SC_IF_CouponCode}  ${couponCode}
    Click Element       ${SC_BTN_ApplyCoupon}

Verify grand total after coupon applied
    ${subTotal}=    Get Text        ${SC_TXT_Subtotal}   
    ${discount}=    Get Text        ${SC_TXT_Discounted}
    ${grandTotal}=  Get Text        ${SC_TXT_GrandTotal}
    Calculate discounted price  ${subTotal}     ${discount}     ${grandTotal}
    Should Be Equal     ${actualGrandTotal}      ${expectedGrandTotal}

Update purchase quantity
    [Arguments]     ${quantity}
    Clear text and input  ${SC_IF_Quantity}  501
    Click Element       ${SC_BTN_UpdateQuantity}

Verify error message displayed
    Element Should be Visible       ${SC_ERR_CannotBeOrdered}
    Element Should be Visible       ${SC_ERR_Quantity_Maximum}

Click on Empty cart button
    Wait until element visible and click  ${SC_BTN_EmptyCart}  2s

Verify cart is empty
    Element Should be Visible       ${SC_TXT_CartIsEmpty}

Add product to compare
    [Arguments]         ${productName}  
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5s
    Click Element       xpath://a[contains(text(), '${productName}')]/../..//a[contains(text(), 'Add to Compare')] 

Check product has been added to comparison list message
    [Arguments]         ${productName}  
    Element Should be Visible       xpath://span[contains(text(), '${productName} has been added to comparison list')]

Click Comparise product button
    Click Element       ${MB_BTN_Compare}

Verify product reflected in comparison Window
    [Arguments]         ${productName}
    
