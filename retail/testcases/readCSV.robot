*** Settings ***
Library     ../../csvLibrary.py

*** Test Cases ***

Read file from csv
    ${all users} =    Read CSV File    sample.csv
    FOR    ${user}    IN    @{all users}
            Log    ${user}
    END