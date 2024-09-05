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
    Click    //*[@id="add-equipment"]
    Select Options By    //*[@id="id_category"]    label    Padel 
    Take Screenshot    # ${..${/}results}/screenshot