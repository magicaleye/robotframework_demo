
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Test Setup         Run Keywords     
...     Open Browser    ${URL}  ${browser}    
...     AND     Maximize Browser Window
...     AND     Set Selenium Speed      0.5s
Test Teardown       Close Browser

***Test Cases***
TC_04: Verify that cost of product in list page and details page are equal
    Go to Mobile products page
    Get a mobile product price from list  Sony Xperia
    Get price from product details page  Sony Xperia
    Price from list and product details page should be equal
    
