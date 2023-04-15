*** Settings ***
Resource    ${EXECDIR}/Resources/common.resource

*** Variables ***
${id}    Robot
${IDENTIFIER}        null
*** Test Cases ***
Day
    ${date}=    Current Date
    Log    ${date}
    Log To Console    ID:${id}
    Sleep    300
From Jenkins Params
    Log    ${IDENTIFIER}
    Log To Console    Identifier:${IDENTIFIER}