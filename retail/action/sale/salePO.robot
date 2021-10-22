*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/sale/saleUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/javascript.robot

*** Keywords ***
Navigate to sale page
    go to   ${SALE URL}
Input product
    [Arguments]     ${name_product1}    ${name_product2}    ${name_product3}    ${name_product4}    ${name_product5}
    Sleep  5s
    reload page
    wait until element is visible       ${search_product_txt}

    Input name product sale      ${name_product1}
    Input name product sale      ${name_product2}
    Input name product sale      ${name_product3}
    Input name product sale      ${name_product4}
    Input name product sale      ${name_product5}


#    input text      ${search_product_txt}       ${name_product2}
#    Press Keys    ${search_product_txt}    ENTER
#    input text      ${search_product_txt}       ${name_product3}
#    Press Keys    ${search_product_txt}    ENTER
#    input text      ${search_product_txt}       ${name_product4}
#    Press Keys    ${search_product_txt}    ENTER
#    input text      ${search_product_txt}       ${name_product5}
#    Press Keys    ${search_product_txt}    ENTER

Input price product
    [Arguments]     ${price}
    #click element   ${price_product_txt}
    #input text      ${new_price_product_txt}    ${price}
    #Press Keys    ${new_price_product_txt}    ENTER
Input name product sale
    [Arguments]     ${name}
    wait until element is visible   ${search_product_txt}
    input text      ${search_product_txt}       ${name}
    Press Keys    ${search_product_txt}    ENTER
Click Pay Button
    click element js      ${pay_btn}
Get total customer pay
    ${total}      get text      ${total_pay_lbl}
    Return From Keyword    ${total}