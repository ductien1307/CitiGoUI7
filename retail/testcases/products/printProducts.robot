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
Resource          ../../action/invoices/detailInvoicesPO.robot
Resource          ../../../core/const.robot


*** Variables ***
${product_id_input}        NAM001
${product_name_input}        Áo vest nam màu xanh lá
${product_discount_input}        899000
${product_qty_input}        2
${product_price_expected}        3,899,000
${product_total_price_expected}        6,000,000

*** Test Cases ***
Valid Login
    set selenium speed      ${DELAY}
    Open Browser To Login Page
    Input Username    0984555475
    Input Password    123456
    Submit Credentials
    Welcome Page Should Be Open

Verify print product page
    Navigate to sale page
    Input product and discount and qty       ${product_id_input}    ${product_discount_input}       ${product_qty_input}
    ${total_customer_pay}      Get total customer pay
    Wait Until Keyword Succeeds     3 times    5s    Click Pay Button
    Wait Until Keyword Succeeds   3 times    5s    Switch Window   NEW
    press keys      //body      ESCAPE
    Switch Window   MAIN
    ${invoice_id}=  Wait Until Keyword Succeeds     3 times    5s    get saved code after execute
    Set Global Variable      ${invoice_id}
    select frame        //iframe
    ${printer_name}     ${printer_price}        ${printer_qty}     ${printer_total_price}=    Wait Until Keyword Succeeds   3 times    5s    get product printer        ${product_name_input}
    Should Be Equal As Strings      ${printer_name}    ${product_name_input}
    Should Be Equal As Strings      ${printer_qty}    ${product_qty_input}
    Should Be Equal As Strings      ${printer_price}    ${product_price_expected}
    Should Be Equal As Strings      ${printer_total_price}    ${product_total_price_expected}

Verify invoices page
    Navigate to invoice page
    Wait Until Keyword Succeeds     3 times    5s    Click invoice by      ${invoice_id}
    ${name}     ${qty}      ${price}        ${total_price}=    Wait Until Keyword Succeeds   3 times    5s    Get detail invoice
    Should Be Equal As Strings      ${name}    ${product_name_input}
    Should Be Equal As Strings      ${price}    ${product_price_expected}
    Should Be Equal As Strings      ${total_price}    ${product_total_price_expected}
    Should Be Equal As Strings      ${qty}    ${product_qty_input}


