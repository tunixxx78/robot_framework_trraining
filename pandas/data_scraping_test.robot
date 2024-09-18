*** Settings ***
Library    Browser
Library    pandas_test.py


Variables    pandas_test.py

*** Variables ***
${FILTER_INPUTFIELD}    //*[@id="id_name"]
${FILTER_BUTTON}    //html/body/div[2]/div/form/button


*** Test Cases ***
Get Data And Save To Csv File
    New Context
    New Browser    chromium    headless=False
    New Page       https://rentalstore.azurewebsites.net
    Click    //a[contains(text(), "Equipment")]

    ${index}    Get Length    ${ADDED_EQUIPMENTS}
    FOR    ${i}    IN RANGE   0    3
        Type Text    ${FILTER_INPUTFIELD}    ${ADDED_EQUIPMENTS}[${i}]
            Click    ${FILTER_BUTTON}
            Sleep    5
            Get Data    ${i - 1}
    END
    




