*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/invoices/detailInvoicesUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***

Get detail invoice
    ${name_product}=    get text    ${name_product_detail_invoice_lbl}
    ${qty_product}=    get text    ${qty_product_detail_invoice_lbl}
    ${price_product}=    get text    ${price_product_detail_invoice_lbl}
    ${total_price_product}=    get text    ${total_price_product_detail_invoice_lbl}
    Return From Keyword     ${name_product}     ${qty_product}      ${price_product}     ${total_price_product}
