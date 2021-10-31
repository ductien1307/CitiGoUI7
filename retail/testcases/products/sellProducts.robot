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
Resource          ../../action/invoices/printInvoicesPO.robot
Resource          ../../../core/const.robot


*** Variables ***
${product_id_input}        NAM001
${product_name_input}        Áo vest nam màu xanh lá
${product_discount_input}        899000
${product_qty_input}        2



*** Test Cases ***
Valid Login
    set selenium speed      ${DELAY}
    Open Browser To Login Page
    Input Username    0984555475
    Input Password    123456
    Submit Credentials
    Welcome Page Should Be Open

#Add new product
#    Navigate to products page
#    Hover to add new button
#    Click add new products label
#    Input name product      sp_test
#    Click category product
#    Click name product
#    Click save product
#    Verify save message success      Hàng hóa đã được tạo thành công

#Sale product
#    Navigate to sale page
#    Sleep  5s
#    reload page
#    Input product and discount and qty       SP000021    1000       2
#    Input product and discount and qty       SP000022    2000       3
#    Input product and discount and qty       SP000023    3000       4
#    Input product and discount and qty       SP000024    4000       5
#    Input product and discount and qty       SP000025    5000       6
#    Input invoice discount      11000
#
#    Click add new customer
#    ${phone}=    Evaluate  random.sample(range(1, 10),4)   random
#    Input new customer      mr.tien     ${phone}
#    Verify save message success      Thông tin khách hàng được cập nhật thành công.
#
#    ${total_customer_pay}      Get total customer pay
#    Click Pay Button
#
#    Sleep  5s
#    Navigate to invoice page
#    ${total_invoice}      Get total invoice
#    Should Be Equal As Strings      ${total_customer_pay}        ${total_invoice}

Verify print product sprint
    Navigate to sale page
    Input product and discount and qty       ${product_id_input}    ${product_discount_input}       ${product_qty_input}
    ${total_customer_pay}      Wait Until Keyword Succeeds      Get total customer pay
    Wait Until Keyword Succeeds     3 times    5s    Click Pay Button
    Wait Until Keyword Succeeds   3 times    5s    Switch Window   NEW
    press keys      //body      ESCAPE
    Switch Window   MAIN
    select frame        //iframe
    ${printer_name}     ${printer_price}        ${printer_qty}     ${printer_total_price}=    Wait Until Keyword Succeeds   3 times    5s    get product         ${product_name_input}
    Should Contain    ${printer_name}    Áo vest nam màu xanh lá
    Should Contain    ${printer_price}    3,899,000
    Should Contain    ${printer_qty}    2
    Should Contain    ${printer_total_price}    6,000,000



