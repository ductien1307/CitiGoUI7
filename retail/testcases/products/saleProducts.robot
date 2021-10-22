*** Settings ***
Library    SeleniumLibrary
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.

Resource          ../../action/login/loginPO.robot
Resource          ../../action/products/listProductsPO.robot
Resource          ../../action/products/addProductsPO.robot
Resource          ../../action/sale/salePO.robot
Resource          ../../action/invoices/listInvoicesPO.robot

*** Test Cases ***
Valid Login
    set selenium speed      ${DELAY}
    Open Browser To Login Page
    Input Username    tienphp
    Input Password    Auto@123
    Submit Credentials
    #Welcome Page Should Be Open

Add new product
    Navigate to products page
    Hover to add new button
    Click add new products label
    Input name product      sp_test
    Click category product
    Click name product
    Click save product
    Verify save message success      Hàng hóa đã được tạo thành công

Sale product
    Navigate to sale page
    Input product       SP000021    SP000022    SP000023    SP000024    SP000025
    ${total_customer_pay}      Get total customer pay
    Click Pay Button
    Navigate to invoice page
    ${total_invoice}      Get total invoice
    Should Be Equal As Strings      ${total_customer_pay}        ${total_invoice}
