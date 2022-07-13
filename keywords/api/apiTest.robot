***Keywords***  
Response status code should be
    [Arguments]     ${expectedCode}  
    Status Should be    ${expectedCode}     ${response}

Set place_id variable for later use 
    ${place_id}=        Get value from Json node  ${response.json()}    place_id
    Set Suite Variable  ${place_id} 

Verify response data and request body
    [Arguments]     ${jsonNode}
    ${expected}=    Get value from Json node  ${body}   ${jsonNode}
    ${actual}=      Get value from Json node  ${response.json()}   ${jsonNode}  
    Should be Equal     ${expected}     ${actual} 

Verify response data with a value
    [Arguments]     ${jsonNode}     ${expected} 
    ${actual}=      Get value from Json node  ${response.json()}   ${jsonNode} 
    Should be Equal     ${expected}     ${actual}