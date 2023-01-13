***Settings***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Default Tags    api

Resource    ../../import/import.robot

***Test Cases***
Add a new place
    [Tags]  SP-9
    ${body}=    Load Json from File   ${DATA_DIR}/api/body.json
    Set Suite Variable  ${body}
    ${response}=    POST    ${API_URL}/maps/api/place/add/json    json=${body}   params=key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response}
    Response status code should be  200
    Verify response data with a value  status  OK
    Set place_id variable for later use 

Get created place
    [Tags]  SP-10
    ${response}=    GET    ${API_URL}/maps/api/place/get/json    params=place_id=${place_id}&key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response} 
    Response status code should be  200
    Verify response data and request body  name
    Verify response data and request body  phone_number
    Verify response data and request body  address

Update created place
    [Tags]  SP-11
    ${response}=    PUT    ${API_URL}/maps/api/place/get/json    params=place_id=${place_id}&key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response}
    Response status code should be  200
    Verify response data and request body  name

Delete created place
    [Tags]  SP-12
    ${jsonString}=      Convert String to Json    {"place_id": "${place_id}"}
    Set Suite Variable  ${jsonString}
    ${response}=    DELETE    ${API_URL}/maps/api/place/delete/json    json=${jsonString}    params=key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response} 
    Response status code should be  200
    Verify response data with a value  status  OK
