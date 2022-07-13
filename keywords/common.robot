***Settings***
Library     SeleniumLibrary
Library     String

***Keywords***
Wait until element visible and click
    [Documentation]     function to wait for an element to be visible before click
    [Arguments]         ${element}      ${timeout}
    Wait Until Element Is Visible   ${element}  ${timeout}  
    Click Element   ${element}

Click and input Text
    [Documentation]     Click on the element first and then input text into input field
    [Arguments]         ${element}      ${text}  
    Click Element       ${element}      
    Input Text          ${element}      ${text}

Get text and compare
    [Documentation]     function to get text from an element and compare it with inputted value
    [Arguments]         ${element}      ${expected}
    Wait Until Element Is Visible   ${element}
    ${actual}=   Get Text     ${element}
    Should Be Equal     ${actual}      ${expected}

Get element attribute and compare
    [Documentation]     function to get text from an element and compare it with inputted value
    [Arguments]         ${element}      ${attribute}      ${expected}
    Wait Until Element Is Visible   ${element}
    ${actual}=   Get Element Attribute     ${element}   ${attribute}
    Should Be Equal     ${actual}      ${expected}

Get actual price
    [Documentation]     Get price as text, then remove currency sign and convert text to number
    [Arguments]     ${element}      
    ${price}=   Get Text      ${element}
    ${getPriceNumber}=     Remove String    ${price}    -   $
    ${actualPrice}=     Convert to Number   ${getPriceNumber}
    Log To Console      \nActual price: ${actualPrice}
    RETURN      ${actualPrice}

Clear text and input
    [Arguments]     ${element}      ${text} 
    Wait Until Element Is Visible   ${element}
    Clear Element Text      ${element}
    Input Text      ${element}      ${text}

Get value from Json node
    [Arguments]     ${jsonBody}     ${node}
    ${list}=      Get Value from Json     ${jsonBody}  ${node}
    ${getValueFromList}=         Get from List   ${list}    0
    RETURN  ${getValueFromList}






    
