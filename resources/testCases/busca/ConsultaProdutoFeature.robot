Language: Brazilian portuguese

*** Settings ***
Documentation   Suite de teste do Advantage, buscar, adicionar e verificar um produto

Resource     ../../../resources/main.resource

Test Setup      Abrir navegador      
Test Teardown   Fechar navegador            

*** Test Cases ***
Cenário: Buscar o produto microfone no AdvantageDemo
    [Documentação]    CT001 Buscar o produto microfone no AdvantageDemo.
    [Etiquetas]  Mice  
    Dado que estou na página inicial do site 
    Quando eu digito "Mice" no campo de busca   MICE     
    E em categorias seleciono Mice        
    E selecionar o mice desejado    
    Então será visualizado o mice selecionado, com preço e nome   ${MICE_HP_USB3}     ${PRECO} 

Cenário: Adicionar o microfone ao carrinho
    [Documentação]        CT002 Cenário: Adicionar o microfone ao carrinho
    [Etiquetas]   Mice  
    Efetuar busca de produto
    Dado que eu clico no botão "Adicionar ao Carrinho" do produto "Mice"    
    Quando verificar o botão de checkout e clicar no mesmo    
    Então o produto sera apresentado na tela de pedido 

Cenário: Verificar o microfone no carrinho na tela de pagamento
    [Documentação]        CT003 Verificar o microfone no carrinho na tela de pagamento
    [Etiquetas]      Mice  
    Efetuar busca de produto
    Dado que eu clico no botão "Adicionar ao Carrinho" do produto "Mice"    
    Quando verificar o botão de checkout e clicar no mesmo    
    E o produto sera apresentado na tela de pedido 
    E efetuar login preenchendo usuario e senha
    E visualizar a tela de pedido de pagamento    
    E clicar no botão "next" para ir a tela de preenchimento dos dados de pagamento    
    Então será validado o pedido que foi adicionado ao carrinho para realizar o pagamento  ${MICE_HP_USB3}     ${PRECO} 