*** Settings ***
Library    SeleniumLibrary
Resource          ../../interface/products/listProductsUI.robot
Resource          ../../../core/const.robot
Resource          ../../../core/common.robot

*** Keywords ***
Navigate to products page
    Sleep    5s
    go to   ${PRODUCTS URL}
Hover to add new button
    wait until element is visible       ${addProduct_btn}       1 mins
    mouse over      ${addProduct_btn}
Click add new products label
    wait until element is visible       ${addProduct_btn}       1 mins
    click element      ${addProduct_lbl}
