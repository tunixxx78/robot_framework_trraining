*** Settings ***
Library    Browser
Library    ..${/}libs/data_scraping.py
Library    OperatingSystem

Variables    ..${/}data/${/}common.py

*** Variables ***
${FILTER_INPUTFIELD}    //*[@id="id_name"]
${FILTER_BUTTON}    //html/body/div[2]/div/form/button


*** Test Cases ***
Get Data
    #Avaa uusi Chrome selain
    New Context
    New Browser    chromium    headless=False
    New Page    https://rentalstore.azurewebsites.net/equipment/
    Sleep    1

    FOR    ${element}    IN RANGE    0    3
        Log To Console   ${ADDED_EQUIPMENTS}[${element}]
        Type Text    ${FILTER_INPUTFIELD}    ${ADDED_EQUIPMENTS}[${element}]
        Click    ${FILTER_BUTTON}
        Sleep    2
        ${data}    Get Page Source
        Send Source    ${data}   
    END

    Filter And Save
