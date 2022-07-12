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

