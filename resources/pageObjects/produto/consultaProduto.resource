*** Variables ***
&{consulta_produto}
...    spearkers=id=speakersImg
...    lupa_pesquisar=id=menuSearch
...    input_lupa=id=autoComplete
...    categoria_mice=xpath=//label[contains(text(),'mice')]
...    fechar_pesquisa=xpath=//div[@data-ng-click='closeSearchForce()'] 
...    mice_hp_usb3=xpath=//a[contains(text(),'HP USB 3 Button Optical Mouse')]
...    produto_mice=//*[@id="Description"]/h1
...    produto_valor_mice=//*[@id="Description"]/h2
...    button_carrinnho=//*[@id="productProperties"]/div[4]/button
...    button_checkout=id=checkOutPopUp
...    input_user=//*[@id="orderPayment"]/div[1]/div/div[1]/sec-form/sec-view[1]/div/input
...    input_senha=//*[@id="orderPayment"]/div[1]/div/div[1]/sec-form/sec-view[2]/div/input
...    btn_login=id=login_btn
...    btn_proximo=id=next_btn
...    btn_next=id=next_btn
...    pag_prod_mice=//*[@id="product"]/td[2]/a/h3
...    valor_mice=//*[@id="userCart"]/div[2]/label[2]/span
