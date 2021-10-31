*** Variables ***
${code_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//a
${name_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']
${qty_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']//following::td[1]
${price_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']//following::td[2]
${discount_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']//following::td[3]
${price_sell_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']//following::td[4]
${total_price_product_detail_invoice_lbl}     //div[contains(@class,'invoiceDetail')]//td[@class='cell-auto']//following::td[5]
