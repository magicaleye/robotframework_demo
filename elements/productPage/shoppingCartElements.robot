***Variables***

${SC_IF_CouponCode}                     id:coupon_code
${SC_BTN_ApplyCoupon}                   xpath://button[@title='Apply']
${SC_TXT_Subtotal}                      xpath://td[contains(text(), 'Subtotal')]/..//span[@class='price']
${SC_TXT_Discounted}                    xpath://td[contains(text(), 'Discount')]/..//span[@class='price']
${SC_TXT_ShippingFee}                   xpath://td[contains(text(), 'Shipping')]/..//span[@class='price']
${SC_TXT_GrandTotal}                    xpath://strong[contains(text(), 'Grand Total')]/../..//span[@class='price']
${SC_IF_Quantity}                       xpath://input[@title='Qty']
${SC_BTN_UpdateQuantity}                xpath://button[@title='Update']
${SC_ERR_Quantity_Maximum}              xpath://p[contains(text(), 'maximum quantity allowed')]  
${SC_BTN_EmptyCart}                     id:empty_cart_button    
${SC_TXT_CartIsEmpty}                   xpath://h1[contains(text(), 'Shopping Cart is Empty')]
${SC_ERR_CannotBeOrdered}               xpath://span[contains(text(), 'cannot be ordered in requested quantity')]
${SC_IF_Zip}                            id:postcode
${SC_BTN_Estimate}                      xpath://button[@title='Estimate']
${SC_BTN_UpdateTotal}                   xpath://button[@title='Update Total']
${SC_BTN_FlatRate}                      id:s_method_flatrate_flatrate
${SC_BTN_ProceedToCheckout}             xpath://button[@title='Proceed to Checkout']

#Checkout screen
${SC_CO_DROP_AddressSelector}           id:billing-address-select
${SC_CO_DROP_OptNewAddress}             xpath://option[contains(text(), 'New Address')]
${SC_CO_BTN_Continue}                   xpath://span[contains(text(), 'Continue')]
${SC_CO_BTN_PlaceOrder}                 xpath://button[@title='Place Order']
${SC_CO_TXT_OrderPlaced}                xpath://h1[contains(text(), 'Your order has been received')]

