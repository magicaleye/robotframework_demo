***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
Go to User Registration page
    Wait until element visible and click  ${BTN_Account}  5s
    Click Element       ${BTN_Account_Register}
    
Go to Login page
    Wait until element visible and click  ${BTN_Account}  5s
    Click Element       ${BTN_Account_Login}

Go to My Account page
    Wait until element visible and click  ${BTN_Account}  5s
    Click Element       ${BTN_Account_MyAccount}

Input user credentials for login
    [Arguments]               ${username}          ${password}
    Click and input Text      ${LG_IF_Email}          ${username}
    Click and input Text      ${LG_IF_Password}       ${password}    

Input user information
    [Arguments]               ${username}                ${password}
    Click and input Text      ${IF_FirstName}            ${firstName}
    Click and input Text      ${IF_MiddleName}           ${middlename}
    Click and input Text      ${IF_LastName}             ${lastname}
    Click and input Text      ${IF_Email}                ${username}
    Click and input Text      ${IF_Password}             ${password}
    Click and input Text      ${IF_ConfirmPassword}      ${password}

Click Register button
    Click Element         ${BTN_Register}

Verify Account registered successfully
    Element Should Be Visible       ${DB_TXT_ThanksForRegistering}  

Click Login button
    Click Element         ${LG_BTN_Login}

Verify user logged in successfully
    Element Should Be Visible       ${DB_TXT_MyDashboard} 




