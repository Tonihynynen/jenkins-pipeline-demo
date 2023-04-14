*** Settings ***
Resource    ${EXECDIR}/Resources/common.resource

*** Variables ***
${id}    Robot
${IDENTIFIER}        null
*** Test Cases ***
Day
    ${date}=    Current Date
    Log    ${date}
    Log To Console    ${id}
From Jenkins Params
    Log    ${IDENTIFIER}