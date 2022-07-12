***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
Get a mobile product price from list
    [Arguments]     ${productName}
    Wait until element is visible       xpath://a[contains(text(), '${productName}')]   5s
    ${price1}=   Get Text    xpath://a[contains(text(), 'Sony Xperia')]/../..//span[@class='price']
    Set Test Variable       $price1

Get price from product details page
    [Arguments]     ${productName}
    Click Element       xpath://a[contains(text(), '${productName}')]
    ${price2}=   Get Text    ${MB_TXT_ProductPrice}
    Set Test Variable       $price2

Price from list and product details page should be equal
    Should Be equal     ${price1}   ${price2}

