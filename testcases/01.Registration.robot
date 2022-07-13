
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Suite Setup         Run Keywords     
...     Open Browser    ${URL}  ${browser}    
...     AND     Maximize Browser Window
...     AND     Set Selenium Speed      0.5s
Suite Teardown       Close Browser

***Test Cases***
TC_01: Register success to system
    [Tags]  register
    Go to User Registration page
    Input user information      ${username}      ${password}
    Click Register button
    Verify Account registered successfully

TC_02: Verify user information is correct after registered successfully  
    [Tags]  register
    Go to Account Information page
    Verify data in the first name field displayed correctly
    Verify data in the middle name field displayed correctly
    Verify data in the last name field displayed correctly
    Verify data in the email field displayed correctly

    
