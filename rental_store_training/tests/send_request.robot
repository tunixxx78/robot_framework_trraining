*** Settings ***
Library    RequestsLibrary
Library    ../../.venv/lib/site-packages/Browser/browser.py


*** Test Cases ***
Try Http Requests
    ${responce}    Get    https://rentalstore.azurewebsites.net/
    log    ${responce}
    Request Should Be Successful    ${responce}
