*** Settings ***
Library    Browser
Library    ..${/}libs/${/}fetch_new_user_list.py


Resource    ..${/}resources/${/}rentalstore.resource


*** Test Cases ***
Signup New Users To Rentalstore
    Open Rentalstore
    ${user_raw_list}    Fetch New List    ..${/}testdata.csv
    Log To Console    ${user_raw_list}
    FOR    ${element}    IN    @{user_raw_list}
        Log To Console    ${element}
        Open And Fill User Registration    ${element}[First name]    ${element}[Last name]    ${element}[Username]    ${element}[Email]    ${element}[Password]
        Logout From Rentalstore
        Sleep    3
    END


    