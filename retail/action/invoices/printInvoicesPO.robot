*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/invoices/printInvoicesUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***
get product printer
    [Arguments]     ${product_name_input}
    ${xpath_product_name}                   format string       ${product_name_lbl}         ${product_name_input}
    ${xpath_product_price}                  format string       ${product_with_lbl}         ${product_name_input}               2
    ${xpath_product_qty}                    format string       ${product_with_lbl}         ${product_name_input}               3
    ${xpath_product_total_price}            format string       ${product_with_lbl}         ${product_name_input}               4
    ${printer_name}=                get text js             ${xpath_product_name}
    ${printer_price}=               get text js             ${xpath_product_price}
    ${printer_qty}=                 get text js             ${xpath_product_qty}
    ${printer_total_price}=         get text js             ${xpath_product_total_price}
    Return From Keyword         ${printer_name}         ${printer_price}        ${printer_qty}        ${printer_total_price}

get invoice id
    ${id}=      get saved code after execute
    Return From Keyword     ${id}

Check invoices
    [Arguments]     ${invoice_id}
