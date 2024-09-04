*** Settings ***
Library    Browser
Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py

*** Keywords ***
Login To Rentalstore
    [Arguments]    ${username}    ${password}
    Type Text      ${LOGIN_USERNAME_FIELD}    ${username}
    Type Secret    ${LOGIN_PASSWORD_FIELD}    $password
    Click          ${LOGIN_BUTTON}

Open Rentalstore
    New Context
    New Browser    ${BROWSER}    headless=False
    New Page       ${RENTALSTORE_URL}

Logout From Rentalstore
    Click    ${LOGOUT_LINK}