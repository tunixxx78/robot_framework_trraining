*** Settings ***
Library           Browser
Library           ..${/}libs${/}equipment.py

Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py
Resource          ..${/}resources${/}rentalstore.resource
Suite Setup       Open Rentalstore
Suite Teardown    Close Browser

*** Test Cases ***
Search For Equipment
    Go To    ${RENTALSTORE_URL}/equipment
    ${equipment}    Give Random Item
    Type Text    ${EQUIPMENT_SEARCH_FIELD}    ${equipment}
    Click    ${EQUIPMENT_SEARCH_BUTTON}
    Sleep    3