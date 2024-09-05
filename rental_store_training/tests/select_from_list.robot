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
    Sleep    2
    Click    //*[@id="add-equipment"]
    Sleep    2
    Select Options By    //*[@id="id_category"]    label    Padel 
    Sleep    2
    Take Screenshot    # ${..${/}results}/screenshot
    Sleep    2