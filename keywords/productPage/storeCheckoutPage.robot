***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
Add a product to cart
    [Arguments]     ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5
    Click Element       xpath://a[contains(text(), '${productName}')]/../..//button[@title='Add to Cart']

Apply discount code
    [Arguments]     ${couponCode}
    Click and input Text  ${SC_IF_CouponCode}  ${couponCode}
    Click Element       ${SC_BTN_ApplyCoupon}

Verify grand total after coupon applied
    ${subTotal}=    Get actual price    ${SC_TXT_Subtotal}   
    ${discount}=    Get actual price    ${SC_TXT_Discounted}
    ${grandTotal}=  Get actual price    ${SC_TXT_GrandTotal}
    Should Be True     ${grandTotal} == ${subTotal} - ${discount}

Verify grand total after shipping fee applied
    ${subTotal}=    Get actual price    ${SC_TXT_Subtotal}   
    ${fee}=         Get actual price    ${SC_TXT_ShippingFee}
    ${grandTotal}=  Get actual price    ${SC_TXT_GrandTotal}
    Should Be True     ${grandTotal} == ${subTotal} + ${fee}

Update purchase quantity
    [Arguments]     ${quantity}
    Clear text and input  ${SC_IF_Quantity}  ${quantity}
    Click Element       ${SC_BTN_UpdateQuantity}

Verify error message displayed
    Element Should be Visible       ${SC_ERR_CannotBeOrdered}
    Element Should be Visible       ${SC_ERR_Quantity_Maximum}

Click on Empty cart button
    Wait until element visible and click  ${SC_BTN_EmptyCart}  5

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
    Click Element       ${SC_BTN_Estimate}
    Click Element       ${SC_BTN_FlatRate}
    Click Element       ${SC_BTN_UpdateTotal}

Click proceed to checkout button
    Click Element       ${SC_BTN_ProceedToCheckout} 

Select new billing address
    ${dropdownVisibility}=      Run keyword and return status   Element should be visible   ${SC_CO_DROP_AddressSelector}
    IF  ${dropdownVisibility} == True
        Click Element       ${SC_CO_DROP_AddressSelector}
        Click Element       ${SC_CO_DROP_OptNewAddress} 
    END       

Enter billing information
    [Arguments]         ${field}        ${info}
    Wait until element is visible       xpath://h2[contains(text(), 'Billing Information')]
    Input Text          xpath://li[contains(@id, 'billing')]//label[contains(text(), '${field}')]/..//input     ${info} 

Enter billing State/province
    [Arguments]         ${region}
    ${dropdownVisibility}=      Run keyword and return status   Element should be visible   id:billing:region_id
    IF  ${dropdownVisibility} == True
        Click Element       id:billing:region_id
        Click Element       xpath://select[@id='billing:region_id']/option[contains(text(), '${region}')]
    ELSE
        Click and input Text  id:region  ${region}  
    END  

Click continue button of checkout step
    [Arguments]     ${step}
    Wait until element visible and click        xpath://h2[contains(text(), '${step}')]/../..//span[contains(text(), 'Continue')]     5

Verify Flat Rate displayed
    Wait until element is visible   xpath://dt[contains(text(), 'Flat Rate')]   5
    Element should be visible       xpath://dt[contains(text(), 'Flat Rate')]

Choose payment type
    [Arguments]         ${type}   
    Wait until element visible and click  xpath://label[contains(text(), '${type}')]/preceding-sibling::input       5          

Click place order button
    Wait until element visible and click   ${SC_CO_BTN_PlaceOrder}  5

Verify order placed successfully
    Wait until element is visible       ${SC_CO_TXT_OrderPlaced}        5
    Element should be visible       ${SC_CO_TXT_OrderPlaced}        
  