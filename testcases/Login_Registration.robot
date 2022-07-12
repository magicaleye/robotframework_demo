
***Settings***
Library     SeleniumLibrary
Resource    ../variables/globalVar.robot
Resource    ../keywords/common.robot
Resource    ../keywords/login_registration.robot  
Test Setup          Open Browser    ${URL}  Chrome
Test Teardown       Close Browser

***Keywords***

***Test Cases***
TC_01: Register success to system
    Maximize Browser Window
    Go to User Registration page
    Input user information      ${username}      ${password}
    
