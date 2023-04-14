*** Settings ***
Resource    ${EXECDIR}/Resources/common.resource

*** Variables ***
${id}    Robot
*** Test Cases ***
Day
    ${date}=    Current Date
    Log    ${date}
    Log To Console    ${id}
