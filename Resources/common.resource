*** Settings ***
Library    DateTime

*** Keywords ***
Current Date 
    ${current_date}    Get Current Date
    RETURN    ${current_date}