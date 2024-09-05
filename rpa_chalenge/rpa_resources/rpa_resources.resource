*** Settings ***
Library        Browser

Variables      ..${/}rpa_data/${/}rpa_locators.py
Variables      ..${/}rpa_data/${/}rpa_common.py


*** Keywords ***
Open Rpa Site
    New Context
    New Browser    ${RPA_BROWSER}    headless=False
    New Page       ${RPA_URL}


Open And Fill Form
    [Arguments]    ${first_name}    ${last_name}    ${company}     ${role}
    Type Text    ${FIRST_NAME_INPUTFIELD}    ${first_name}
    Type Text    ${LAST_NAME_INPUTFIELD}    ${last_name}
    Type Text    ${COMPANY_INPUTFIELD}    ${company}
    Type Text    ${ROLE_INPUTFIELD}    ${role}