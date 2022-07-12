
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Suite Setup          Open Browser    ${URL}   ${browser}
Suite Teardown       Close Browser

***Test Cases***
TC_01: Register success to system
    Maximize Browser Window
    Go to User Registration page
    Input user information      ${username}      ${password}
    Click Register button
    Verify Account registered successfully

TC_02: Verify user information is correct after registered successfully  
    Go to My Account page
    Go to Account Information page
    Verify data in the first name field displayed correctly
    Verify data in the last name field displayed correctly
    Verify data in the email field displayed correctly

TC_03: Login success to system
    Go to Login page
    Input user credentials for login     ${username}      ${password}
    
