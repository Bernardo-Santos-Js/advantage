*** Settings ***
Resource  ../../main.resource    

*** Keywords ***

Efetuar busca de produto
    que estou na página inicial do site 
    eu digito "Mice" no campo de busca   MICE     
    em categorias seleciono Mice        
    selecionar o mice desejado    
    será visualizado o mice selecionado, com preço e nome   ${MICE_HP_USB3}     ${PRECO} 
