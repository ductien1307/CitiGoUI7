*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/invoices/listInvoicesUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***
Navigate to invoice page
    go to   ${INVOICES URL}
Get total invoice
    wait until element is visible       ${total_invoice_lbl}
    ${total}      get text      ${total_invoice_lbl}
    Return From Keyword    ${total}