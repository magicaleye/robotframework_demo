***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
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

# Shipping
Select shipping country
    [Arguments]         ${country}
    Click Element       id:country
    Click Element       xpath://option[contains(text(), '${country}')]

Select shipping state/province
    [Arguments]         ${region}
    ${dropdownVisibility}=      Run keyword and return status   Element should be visible   id:region_id
    IF  ${dropdownVisibility} == True
        Click Element       id:region_id
        Click Element       xpath://option[contains(text(), '${region}')]
    ELSE
        Click and input Text  id:region  ${region}  
    END    

Enter Zip code
    [Arguments]         ${zipCode}
    Input Text          ${SC_IF_Zip}        ${zipCode}

Estimate shipping cost


    
