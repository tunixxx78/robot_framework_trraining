*** Settings ***
Library           Browser
Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py
Resource          ..${/}resources${/}rentalstore.resource
Suite Setup       Open Rentalstore
Suite Teardown    Close Browser

*** Test Cases ***
Navigation
    [Setup]    Go To    ${RENTALSTORE_URL}
    FOR     ${i}     IN     @{LINKS}
        Click    ${i}
        Sleep    2
    END


