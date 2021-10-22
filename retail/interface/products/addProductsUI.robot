*** Variables ***
${name_product_txt}     //input[@id='idSuggestProductNameSearchTerm']
${cate_product_cmb}     //kv-category-dropdownlist[@selected-id='product.CategoryId']
${name_product_lbl}     (//div[@class='k-animation-container']//ul[@role='listbox']//li//span)[2]
${save_product_btn}     //a[@ng-enter='SaveProduct()']
${mess_success_lbl}     //div[@class='toast-message']
