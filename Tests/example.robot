*** Settings ***
Resource    ${EXECDIR}/Resources/common.resource
*** Test Cases ***
Day
    ${date}=    Current Date
    Log    ${date}
