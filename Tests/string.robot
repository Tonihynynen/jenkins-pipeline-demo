*** Settings ***
Library    String

*** Variables ***
${PLATFORM_ID}    ÅPOIUYTR

*** Test Cases ***
Generate Random String
    ${RANDOM}    Generate Random String    12
    LOG    ${RANDOM}
    LOG    ${PLATFORM_ID}