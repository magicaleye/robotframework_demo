***Variables***

# Account menu elements
${BTN_Account}                          xpath://span[@class='label' and contains(text(), 'Account')]                      
${BTN_Account_MyAccount}                xpath://a[@title='My Account']
${BTN_Account_Register}                 xpath://a[@title='Register']
${BTN_Account_Login}                    xpath://a[@title='Log In']

# Shopping cart
${BTN_Cart}                             xpath://span[contains(text(), 'Cart')]
${SC_IF_CouponCode}                     id:coupon_code
${SC_BTN_ApplyCoupon}                   xpath://button[@title='Apply']
${SC_TXT_Subtotal}                      xpath://td[contains(text(), 'Subtotal')]/..//span[@class='price']
${SC_TXT_Discounted}                    xpath://td[contains(text(), 'Discount')]/..//span[@class='price']
${SC_TXT_GrandTotal}                    xpath://strong[contains(text(), 'Grand Total')]/../..//span[@class='price']
${SC_IF_Quantity}                       xpath://input[@title='Qty']
${SC_BTN_UpdateQuantity}                xpath://button[@title='Update']
${SC_ERR_Quantity_Maximum}              xpath://p[contains(text(), 'maximum quantity allowed')]  
${SC_BTN_EmptyCart}                     id:empty_cart_button    
${SC_TXT_CartIsEmpty}                   xpath://h1[contains(text(), 'Shopping Cart is Empty')]
${SC_ERR_CannotBeOrdered}               xpath://span[contains(text(), 'cannot be ordered in requested quantity')]

# Store
${BTN_MOBILE}                           xpath://a[contains(text(), 'Mobile')]/..
${BTN_TV}                               xpath://a[contains(text(), 'TV')]/..
