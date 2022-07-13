***Variables***
${DB_TXT_MyDashboard}                   xpath://h1[contains(text(), 'My Dashboard')]
${DB_TXT_ThanksForRegistering}          xpath://span[contains(text(), 'Thank you')]

# Sidebar
${DB_BTN_AccountInfo}           xpath://a[contains(text(), 'Account Information')]

# Account information page
${DB_TXT_FirstName}                 id:firstname
${DB_TXT_MiddleName}                id:middlename
${DB_TXT_LastName}                  id:lastname
${DB_TXT_Email}                     id:email

# Wishlist page
${DB_BTN_ShareWishlist}             xpath://button[@title='Share Wishlist']
${DB_BTN_RemoveWishlistItem}        xpath://button[@title='Remove Item']
${DB_IF_EmailToShare}               id:email_address
${DB_IF_ShareMessage}               id:message
${DB_TXT_WishlistShared}            xpath://span[contains(text(), 'Your Wishlist has been shared')]           