*** Settings ***
Library           Browser
Library           ..${/}libs${/}user_info.py

Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py
Resource          ..${/}resources${/}rentalstore.resource
Suite Setup       Open Rentalstore
Suite Teardown    Close Browser

*** Test Cases ***
Registration No username
    [Setup]    Go To    ${RENTALSTORE_URL}
    Open And Fill User Registration    ${FIRST_NAME}    ${LAST_NAME}    ${EMPTY_FIELD}    ${NEW_EMAIL}     ${NEW_PASSWORD}
    Sleep    5

Registration With All Values
    [Setup]    Go To    ${RENTALSTORE_URL}
        Open And Fill User Registration    ${FIRST_NAME}    ${LAST_NAME}    ${NEW_USERNAME}    ${NEW_EMAIL}     ${NEW_PASSWORD}
    Sleep    5
