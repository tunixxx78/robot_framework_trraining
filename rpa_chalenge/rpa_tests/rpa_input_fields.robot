*** Settings ***
Library        Browser

Variables      ..${/}rpa_data/${/}rpa_locators.py
Variables      ..${/}rpa_data/${/}rpa_common.py

Resource       ..${/}rpa_resources/${/}rpa_resources.resource
Suite Setup    Open Rpa Site
Suite Teardown    Close Browser


*** Test Cases ***
Fill Input Fields
    ${count}    Get Length    ${PERSONS}
    FOR     ${i}     IN RANGE    ${count}
        Open And Fill Form    ${PERSONS}[${i}][firstname]    ${PERSONS}[${i}][lastname]    ${PERSONS}[${i}][company]    
        ...    ${PERSONS}[${i}][role]    ${PERSONS}[${i}][address]    ${PERSONS}[${i}][email]    ${PERSONS}[${i}][phone]
    END 
