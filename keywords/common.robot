***Settings***
Library     SeleniumLibrary

***Keywords***
Wait until element visible and click
    [Documentation]     function to wait for an element to be visible before click
    [Arguments]         ${element}      ${timeout}
    Wait Until Element Is Visible   ${element}  ${timeout}  
    Click Element   ${element}

Click and input Text
    [Arguments]         ${element}      ${text}  
    Click Element       ${element}      
    Input Text          ${element}      ${text}

    
