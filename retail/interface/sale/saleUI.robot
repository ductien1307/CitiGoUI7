*** Variables ***
${search_product_txt}     //input[@id='productSearchInput']
${qty_product_txt}     //input[@id='productQtyInput']
${price_product_txt}     //button[@ng-disabled='item.PriceByPromotion']
${new_price_product_txt}     //input[@id='newPriceIpt']

${discount_by_%_lbl}     //kv-toggle[@ng-model='vm.discountType']//*[contains(text(),'%')]
${discount_by_vnd_lbl}     //kv-toggle[@ng-model='vm.discountType']//*[contains(text(),'VND')]
${suggestion_product_lbl}     //p[@class='name-item']

${pay_btn}     //button[@id='saveTransaction']
${total_pay_lbl}     //payment-invoice-component[contains(@ng-if,'Invoice')]//div[contains(@class,'color-pay')]

${invoice_discount_btn}     //button[contains(@uib-popover-template,'discountInvoiceCartTpl')]
${invoice_discount_txt}     //input[@id='popover-discountValue']
${product_discount_btn}     //div[contains(text(),'{0}')]/../../..//button[@kv-popup-anchor='productPrice']
${product_update_qty_txt}     //div[contains(text(),'{0}')]/../../..//input[@ng-model='item.Quantity']
${product_discount_txt}     //input[@id='priceInput']

${customer_add_new_btn}     //button[@id='addCustomer']
