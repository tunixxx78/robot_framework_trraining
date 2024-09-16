*** Settings ***
Library    Browser
Library    equipment.py

Variables    ..${/}data/${/}common.py
Variables    ..${/}data/${/}locators.py


*** Test Cases ***
Log In To Rentalstore Site
    New Context
    New Browser                    ${BROWSER}    headless=False
    New Page                       ${RENTALSTORE_URL}
    Wait For Elements State    ${EQUIPMENTPAGE}
    Click    ${EQUIPMENTPAGE}
    Sleep    2
    Click    ${FIRST_EQUIPMENT_FROM_LIST}

    ${equipmwnt_dic}=     Read Needed Data

    ${equip}    Create Equipment    ${equipmwnt_dic}

    Log To Console    ${equip.name}
    
*** Keywords ***
Read Needed Data 
    ${e_name}        Get Text    ${EQUIPMENT_NAME}
    ${e_category}    Get Text    ${EQUIPMENT_CATEGORY}
    ${e_manufacturer}    Get Text    ${EQUIPMENT_MANUFACTURER}
    ${e_model}    Get Text    ${EQUIPMENT_MODEL}
    ${e_year}    Get Text    ${EQUIPMENT_YEAR}
    ${e_color}    Get Text    ${EQUIPMENT_COLOR}
    ${e_condition}    Get Text    ${EQUIPMENT_CONDITION}
    ${e_size}    Get Text    ${EQUIPMENT_SIZE}
    ${e_skill}    Get Text    ${EQUIPMENT_SKILL_LEVEL}
    ${e_description}     Get Text    ${EQUIPMENT_DESCRIPTION}

    &{equipment_dictionary}=    Create Dictionary    name=${e_name}    category=${e_category}    manufacturer=${e_manufacturer}    
    ...    model=${e_model}    year=${e_year}    color=${e_color}    condition=${e_condition}    size=${e_size}    
    ...    skill_level=${e_skill}    description=${e_description}
    RETURN    ${equipment_dictionary}