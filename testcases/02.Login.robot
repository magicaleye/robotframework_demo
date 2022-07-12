
***Settings***
Library     SeleniumLibrary
Resource    ../import/import.robot 
Suite Setup         Run Keywords     
...     Open Browser    ${URL}  ${browser}    
...     AND     Maximize Browser Window
Suite Teardown       Close Browser

***Test Cases***
TC_03: Login success to system
    Go to Login page
    Input user credentials for login  ${username}      ${password}
    Click login button
    Verify user logged in successfully
    
