*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/products/addProductsUI.robot

*** Keywords ***
Input name product
    [Arguments]    ${name_product}
    input text      ${name_product_txt}      ${name_product}
Click category product
    click element   ${cate_product_cmb}
Click name product
    #Set Selenium Speed    ${DELAY}
    click element   ${name_product_lbl}
Click save product
    click element       ${save_product_btn}
Verify save message success
    [Arguments]     ${mess_success}
    Wait Until Page Contains Element    ${mess_success_lbl}      40s
    Element Should Contain    ${mess_success_lbl}     ${mess_success}


