*** Variables ***
${search_product_txt}     //input[@id='productSearchInput']
${qty_product_txt}     //input[@id='productQtyInput']
${price_product_txt}     //button[@ng-disabled='item.PriceByPromotion']
${new_price_product_txt}     //input[@id='newPriceIpt']
${qty_discount_product_txt}     //input[@id='priceInput']
${discount_by_%_lbl}     //kv-toggle[@ng-model='vm.discountType']//*[contains(text(),'%')]
${discount_by_vnd_lbl}     //kv-toggle[@ng-model='vm.discountType']//*[contains(text(),'VND')]
${suggestion_product_lbl}     //p[@class='name-item']

${pay_btn}     //button[@id='saveTransaction']
${total_pay_lbl}     //payment-invoice-component[contains(@ng-if,'Invoice')]//div[contains(@class,'color-pay')]
