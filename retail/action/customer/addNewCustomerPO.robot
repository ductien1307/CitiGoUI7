*** Settings ***
Library    SeleniumLibrary
Library    StringFormat
Resource          ../../interface/customer/addNewCustomerUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***

Input new customer
    [Arguments]     ${customer_name}        ${customer_phone}
    input text      ${customer_name_txt}       ${customer_name}
    input text      ${customer_phone_txt}       ${customer_phone}
    click element js      ${customer_save_btn}











