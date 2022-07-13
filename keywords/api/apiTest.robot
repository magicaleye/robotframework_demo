***Keywords***  
Response status code should be
    [Arguments]     ${expectedCode}  
    Status Should be    ${expectedCode}     ${response}

Set place_id variable for later use 
    ${place_id}=        Get value from Json node  ${response.json()}    place_id    0
    Set Suite Variable  ${place_id} 

Verify response data and request body
    [Arguments]     ${jsonNode}     ${index}  
    ${expected}=    Get value from Json node  ${body}   ${jsonNode}    ${index}
    ${actual}=      Get value from Json node  ${response.json()}   ${jsonNode}     ${index}   
    Should be Equal     ${expected}     ${actual} 

Verify response data with a value
    [Arguments]     ${jsonNode}     ${expected}     ${index}  
    ${actual}=      Get value from Json node  ${response.json()}   ${jsonNode}     ${index}   
    Should be Equal     ${expected}     ${actual}