*** Settings ***
Library    Browser

*** Variables ***
${USERNAME}    timmy
${PASSWORD}    timmy
${RENTAL_URL}    https://rentalstore.azurewebsites.net/login
${BROWSER}    chromium

*** Test Cases ***
Successful Login Test
    New Context
    New Browser    ${BROWSER}    headless=False
    New Page    ${RENTAL_URL}
    Type Text    //*[@id="id_username"]    ${USERNAME}
    Type Secret    //*[@id="id_password"]    $PASSWORD
    Click    //form/button[@type="submit"]

    # check that login was successful
    ${logout_link}    Get Element    //*[@id="logout"]
    Click    ${logout_link}
    Close Browser