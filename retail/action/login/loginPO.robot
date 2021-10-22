*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/login/loginUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/common.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    #Set Selenium Speed    ${DELAY}

Login Page Should Be Open
    Title Should Be    Login Page

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    ${username_txt}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${password_txt}    ${password}

Submit Credentials
    Click Button    ${login_btn}

Welcome Page Should Be Open
    #Set Selenium Speed    ${DELAY}
    Location Should Be    ${WELCOME URL}
