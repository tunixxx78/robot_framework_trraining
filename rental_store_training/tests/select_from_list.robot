*** Settings ***
Library           Browser
Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py
Resource          ..${/}resources${/}rentalstore.resource
Suite Setup       Open Rentalstore
Suite Teardown    Close Browser


*** Test Cases ***
Choose Right Object 
    [Setup]    Go To    ${RENTALSTORE_URL}/login
    Login To Rentalstore    ${USERNAME}    ${PASSWORD}
    Click    ${EQUIPMENT_ADD_BUTTON}
    Select Options By    ${EQUIPMENT_TYPE_SELECTOR}    label    Padel 
    Take Screenshot    filename=${CURDIR}${/}..${/}results${/}test.png 