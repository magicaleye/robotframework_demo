***Settings***
Library     SeleniumLibrary
Resource    ../../import/import.robot

***Keywords***
Go to Account Information page
    Run Keyword And Ignore Error    Click Element     ${DB_BTN_AccountInfo} 

Verify data in the first name field displayed correctly
    Get element attribute and compare  ${DB_TXT_FirstName}  value  ${firstName}

Verify data in the middle name field displayed correctly
    Get element attribute and compare  ${DB_TXT_MiddleName}  value  ${middlename}    

Verify data in the last name field displayed correctly
    Get element attribute and compare  ${DB_TXT_LastName}  value  ${lastname}

Verify data in the email field displayed correctly
    Get element attribute and compare  ${DB_TXT_Email}  value  ${username}



