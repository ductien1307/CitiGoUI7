*** Variables ***
${SERVER}         tienphp01.kiotviet.vn
${BROWSER}        Chrome
${DELAY}          0.5
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      https://${SERVER}/man/#/login
${WELCOME URL}    https://${SERVER}/man/#/DashBoard
${PRODUCTS URL}    https://${SERVER}/man/#/Products
${INVOICES URL}    https://${SERVER}/man/#/Invoices
${SALE URL}    https://${SERVER}/newsale/#/
${ERROR URL}      http://${SERVER}/error.html


${ENTER_KEY}      \\13
${ESC_KEY}        \\27
${F9_KEY}         \ue039
${TAB_KEY}        \\9
${F5_KEY}         \\116
${HTML_XPATH}     xpath://html