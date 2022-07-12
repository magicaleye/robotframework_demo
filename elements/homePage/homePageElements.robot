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

# Store
${BTN_MOBILE}                           xpath://a[contains(text(), 'Mobile')]/..
${BTN_TV}                               xpath://a[contains(text(), 'TV')]/..
