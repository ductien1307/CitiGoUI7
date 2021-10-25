*** Settings ***
Library    SeleniumLibrary
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.

Resource          ../../action/login/loginPO.robot
Resource          ../../action/products/listProductsPO.robot
Resource          ../../action/products/addProductsPO.robot
Resource          ../../action/customer/addNewCustomerPO.robot
Resource          ../../action/sale/salePO.robot
Resource          ../../action/invoices/listInvoicesPO.robot


*** Test Cases ***
Valid Login
    set selenium speed      ${DELAY}
    Open Browser To Login Page
    Input Username    tienphp
    Input Password    Auto@123
    Submit Credentials
    Welcome Page Should Be Open

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
    Sleep  5s
    reload page
    Input product and discount and qty       SP000021    1000       2
    Input product and discount and qty       SP000022    2000       3
    Input product and discount and qty       SP000023    3000       4
    Input product and discount and qty       SP000024    4000       5
    Input product and discount and qty       SP000025    5000       6
    Input invoice discount      11000

    Click add new customer
    ${phone}=    Evaluate  random.sample(range(1, 10),4)   random
    Input new customer      mr.tien     ${phone}
    Verify save message success      Thông tin khách hàng được cập nhật thành công.

    ${total_customer_pay}      Get total customer pay
    Click Pay Button

    Sleep  5s
    Navigate to invoice page
    ${total_invoice}      Get total invoice
    Should Be Equal As Strings      ${total_customer_pay}        ${total_invoice}
