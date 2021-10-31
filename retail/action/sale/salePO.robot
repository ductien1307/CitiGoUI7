*** Settings ***
Library    SeleniumLibrary
Library    StringFormat
Resource          ../../interface/sale/saleUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***
Navigate to sale page
    go to   ${SALE URL}

#Input product
#    [Arguments]     ${name_product1}    ${name_product2}    ${name_product3}    ${name_product4}    ${name_product5}
#    Sleep  5s
#    reload page
#    wait until element is visible       ${search_product_txt}
#
#    Input name product sale      ${name_product1}
#    Input name product sale      ${name_product2}
#    Input name product sale      ${name_product3}
#    Input name product sale      ${name_product4}
#    Input name product sale      ${name_product5}

Input product and discount and qty
    [Arguments]     ${product_name}     ${product_discount}     ${product_qty}
    wait until element is visible   ${search_product_txt}
    input text      ${search_product_txt}       ${product_name}
    Press Keys    ${search_product_txt}    ENTER
    ${product_discount_btn}      format string       ${product_discount_btn}    ${product_name}
    ${product_update_qty_txt}      format string       ${product_update_qty_txt}    ${product_name}
    click element js       ${product_discount_btn}
    input text      ${product_discount_txt}     ${product_discount}
    input text      ${product_update_qty_txt}     ${product_qty}

Input price product
    [Arguments]     ${price}
    #click element   ${price_product_txt}
    #input text      ${new_price_product_txt}    ${price}
    #Press Keys    ${new_price_product_txt}    ENTER

#Input name product sale
#    [Arguments]     ${name}
#    wait until element is visible   ${search_product_txt}
#    input text      ${search_product_txt}       ${name}
#    Press Keys    ${search_product_txt}    ENTER
#

Click Pay Button
    wait until element is visible       ${pay_btn}
    click element js      ${pay_btn}

Get total customer pay
    ${total}      get text      ${total_pay_lbl}
    Return From Keyword    ${total}

Input invoice discount
    [Arguments]     ${invoice_discount}
    Sleep       2s
    click element js   ${invoice_discount_btn}
    input text      ${invoice_discount_txt}       ${invoice_discount}

Click add new customer
    click element js      ${customer_add_new_btn}







