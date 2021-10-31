*** Variables ***
${product_name_lbl}     //div[@class='printBox']//*[contains(text(),'{0}')]
${product_with_lbl}     (//div[@class='printBox']//*[contains(text(),'{0}')]/parent::td/parent::tr//following::tr[1]//td//span)[{1}]
${invoice_id_lbl}     //div[@id='kvSavedCode']

