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

Open And Fill User Registration
    [Arguments]    ${first_name}    ${last_name}    ${new_user_name}    ${e_mail}    ${new_password}
    Click    //*[@id="signup"]
    Type Text    ${FIRST_NAME_FIELD}    ${first_name}
    Type Text    ${LAST_NAME_FIELD}    ${last_name}
    Type Text    ${NEW_USERNAME_FIELD}    ${new_user_name}
    Type Text    ${EMAiL_FIELD}    ${e_mail}
    Type Text    ${NEW_PASSWORD_FIELD}    ${new_password}
    Type Text    ${NEW_PASSWORD_AGAIN_FIELD}    ${new_password}
    Click    ${SIGNUP_BUTTON}
    Wait For Elements State    //*[@id="logout"]