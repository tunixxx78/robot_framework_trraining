*** Settings ***
Library        Browser
Library        ..${/}libs/${/}list_fetch.py

Variables      ..${/}rpa_data/${/}rpa_locators.py
Variables      ..${/}rpa_data/${/}rpa_common.py

Resource       ..${/}rpa_resources/${/}rpa_resources.resource
Suite Setup    Open Rpa Site
Suite Teardown    Close Browser


*** Test Cases ***
Fill Input Fields From Hardcoded List
    
    ${count}    Get Length    ${PERSONS}
    FOR     ${i}     IN RANGE    ${count}
        Open And Fill Form    ${PERSONS}[${i}][firstname]    ${PERSONS}[${i}][lastname]    ${PERSONS}[${i}][company]    
        ...    ${PERSONS}[${i}][role]    ${PERSONS}[${i}][address]    ${PERSONS}[${i}][email]    ${PERSONS}[${i}][phone]
    END 

Fetch And Fill Input Fields From Excel File
    ${result_list}    User Data As List Of Dictionarys    ..${/}challenge.xlsx
    FOR    ${element}    IN    @{result_list}
        Open And Fill Form    ${element}[First Name]    ${element}[Last Name ]    ${element}[Company Name]    
        ...    ${element}[Role in Company]    ${element}[Address]    ${element}[Email]    ${element}[Phone Number]
        
    END
