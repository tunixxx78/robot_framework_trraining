*** Settings ***
Library           Browser
Variables         ..${/}data${/}locators.py
Variables         ..${/}data${/}common.py
Resource          ..${/}resources${/}rentalstore.resource
Suite Setup       Open Rentalstore
Suite Teardown    Close Browser


*** Test Cases ***
Successful Login Test
    [Setup]    Go To    ${RENTALSTORE_URL}/login
    Login To Rentalstore    ${USERNAME}    ${PASSWORD}
    # Check that login was successful
    ${logout_link}    Get Element    ${LOGOUT_LINK}
    [Teardown]    Logout From Rentalstore

Failed Login Test
    [Setup]    Go To    ${RENTALSTORE_URL}/login
    Login To Rentalstore    ${USERNAME}    ${WRONGPASSWORD}
    ${error_message}     Get Element    xpath=//div[@class="alert alert-danger" and @role="alert"]
    Log    ${error_message}
    Close Browser

    # for test commit check!
