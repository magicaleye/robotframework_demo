
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Test Setup         Run Keywords     
...     Open Browser    ${URL}  ${browser}    
...     AND     Maximize Browser Window
...     AND     Set Selenium Speed      0.5s
Test Teardown       Close Browser

***Test Cases***
# TC_04: Verify that cost of product in list page and details page are equal
#     Go to Mobile products page
#     Get a mobile product price from list  Sony Xperia
#     Get price from product details page  Sony Xperia
#     Price from list and product details page should be equal

# TC_05: Verify Discount Coupon works correctly   
#     Go to Mobile products page
#     Add a product to cart  Sony Xperia
#     Apply discount code  GURU50
#     Verify grand total after coupon applied

# TC_06: Verify that you can't add more 500 items of product
#     Go to Mobile products page
#     Add a product to cart  Sony Xperia
#     Update purchase quantity  501
#     Verify error message displayed
#     Click on Empty cart button
#     Verify cart is empty

TC_07: Verify that you are able to compare two products
    Go to Mobile products page
    Add product to compare  IPhone
    Check product has been added to comparison list message  IPhone
    Add product to compare  Sony Xperia    
    Check product has been added to comparison list message  Sony Xperia
    Click Comparise product button
    Switch Window   NEW
    