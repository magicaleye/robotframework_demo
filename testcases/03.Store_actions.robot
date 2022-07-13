
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Test Setup         Run Keywords     
...     Open Browser    ${URL}  ${browser}    
...     AND     Maximize Browser Window
...     AND     Set Selenium Speed      0.2s
Test Teardown       Close Browser

***Test Cases***
TC_04: Verify that cost of product in list page and details page are equal
    [Tags]  store
    Go to Mobile products page
    Get a mobile product price from list  Sony Xperia
    Get price from product details page  Sony Xperia
    Price from list and product details page should be equal

TC_05: Verify Discount Coupon works correctly   
    [Tags]  store
    Go to Mobile products page
    Add a product to cart  Sony Xperia
    Apply discount code  GURU50
    Verify grand total after coupon applied

TC_06: Verify that you can't add more 500 items of product
    [Tags]  store
    Go to Mobile products page
    Add a product to cart  Sony Xperia
    Update purchase quantity  501
    Verify error message displayed
    Click on Empty cart button
    Verify cart is empty

TC_07: Verify that you are able to compare two products
    [Tags]  store
    Go to Mobile products page
    Add product to compare  IPhone
    Check product has been added to comparison list message  IPhone
    Add product to compare  Sony Xperia    
    Check product has been added to comparison list message  Sony Xperia
    Click Comparise product button
    Switch Window   NEW
    Maximize Browser Window
    Click close window button

TC_08: Verify you can share wishlist to other people using email
    [Tags]  store
    Go to Login page
    Input user credentials for login  ${username}      ${password}
    Click login button
    Go to TV products page
    Add product to wishlist  LG LCD
    Verify product added to wishlist successfully  LG LCD
    Click share Wishlist button
    Enter share wishlist email and message  demo@gmail.com       My wishlist
    Click share Wishlist button
    Verify wishlist shared successfully
    Verify my wishlist page have item  LG LCD

TC_09: Verify you can Add your Review
    [Tags]  store
    Go to TV products page
    Go to product details page  Samsung LCD
    Click add review button
    Rate product  5
    Click submit review button
    Verify Required field error showing under field  your though
    Verify Required field error showing under field  Summary
    Verify Required field error showing under field  nickname
    Enter required information for review  Product is good       Good       Automation test
    Click submit review button
    Verify review accepted for moderation message

TC_10: Verify user is able to purchase product 
    [Tags]  store
    Go to Login page
    Input user credentials for login  ${username}      ${password}
    Click login button
    Go to My Wishlist page from dashboard
    Add product from wishlist to cart  LG LCD
    Select shipping country  United States
    Select shipping state/province  New York
    Enter Zip code  543423
    Estimate shipping cost
    Verify grand total after shipping fee applied
    Click proceed to checkout button
    Select new billing address
    Enter billing information    Address        ABC
    Enter billing State/province  New York
    Enter billing information    City           New York
    Enter billing information    Zip        543423
    Enter billing information    Telephone      123123123
    Click continue button of checkout step  Billing Information 
    Click continue button of checkout step  Shipping Method 
    Choose payment type  Check / Money order
    Click continue button of checkout step  Payment Information 
    Click place order button
    Verify order placed successfully




