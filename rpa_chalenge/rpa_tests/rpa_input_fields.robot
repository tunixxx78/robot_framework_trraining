*** Settings ***
Library        Browser

Variables      ..${/}rpa_data/${/}rpa_locators.py
Variables      ..${/}rpa_data/${/}rpa_common.py

Resource       ..${/}rpa_resources/${/}rpa_resources.resource
Suite Setup    Open Rpa Site
Suite Teardown    Close Browser


*** Test Cases ***
Fill Input Fields
    Open And Fill Form    ${PERSON}[firstname]    ${PERSON}[lastname]    ${PERSON}[company]    ${PERSON}[role]
    Sleep    5