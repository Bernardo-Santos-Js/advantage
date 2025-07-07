*** Settings ***
Resource  ../../../main.resource

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window
       

que estou na página inicial do site   
    Wait Until Element Is Visible    ${consulta_produto.spearkers}    ${WAIT_TIME_COMPONENT} 
     
eu digito "Mice" no campo de busca
   [Arguments]    ${mice}
   Wait Until Element Is Visible   ${consulta_produto.lupa_pesquisar}     ${WAIT_TIME_COMPONENT} 
   Click Element    ${consulta_produto.lupa_pesquisar}
   Input Text    ${consulta_produto.input_lupa}    ${mice}
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_buscaMicrofone_.png
     
em categorias seleciono Mice
   Wait Until Element Is Visible    ${consulta_produto.categoria_mice}     ${WAIT_TIME_COMPONENT} 
   Click Element    ${consulta_produto.categoria_mice}
   Wait Until Element Is Visible    ${consulta_produto.fechar_pesquisa}
   Click Element    ${consulta_produto.fechar_pesquisa}
   ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
   Capture Page Screenshot    ${timestamp}_buscaMicrofone_.png
     

selecionar o mice desejado
    Wait Until Element Is Visible    ${consulta_produto.mice_hp_usb3}     ${WAIT_TIME_COMPONENT} 
    Click Element    ${consulta_produto.mice_hp_usb3} 
    Sleep     1s      

será visualizado o mice selecionado, com preço e nome  
    [Arguments]     ${mice}    ${valor}       
    ${texto_usb}=    Get Text     ${consulta_produto.produto_mice}
    Should Be Equal As Strings    ${texto_usb}    ${mice}
    ${valor_mice}=    Get Text     ${consulta_produto.produto_valor_mice}
    Should Be Equal As Strings    ${valor_mice}    ${valor}
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_buscaMicrofone_.png
      

que eu clico no botão "Adicionar ao Carrinho" do produto "Mice"
    Wait Until Element Is Visible    ${consulta_produto.button_carrinnho} 
    Click Element       ${consulta_produto.button_carrinnho} 
    Sleep    2s    
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_validarMicrofone_.png    
     
verificar o botão de checkout e clicar no mesmo
    Wait Until Element Is Visible    ${consulta_produto.button_checkout}
    Click Element    ${consulta_produto.button_checkout}
    Sleep    10s
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_adicionarMicrofone_.png  

o produto sera apresentado na tela de pedido   
    Page Should Contain    ${ORDER_PAYMENT}
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_adicionarMicrofone_.png  
      
efetuar login preenchendo usuario e senha
    Click Element    ${consulta_produto.input_user}
    Input Text       ${consulta_produto.input_user}    ${USER}
    Click Element    ${consulta_produto.input_senha}
    Input Password    ${consulta_produto.input_senha}    ${SENHA}  
    Click Element     ${consulta_produto.btn_login}
    ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_validarMicrofone_.png   
      

visualizar a tela de pedido de pagamento
    Wait Until Element Is Visible    ${consulta_produto. btn_proximo}
    Page Should Contain    ${PEDIDO_PAG}  
    Sleep    10s
   ${timestamp} =    Get Current Date    result_format=%Y-%m-%d_%H-%M-%S
    Capture Page Screenshot    ${timestamp}_validarMicrofone_.png    
      
    
clicar no botão "next" para ir a tela de preenchimento dos dados de pagamento
    Click Button    ${consulta_produto. btn_next}

será validado o pedido que foi adicionado ao carrinho para realizar o pagamento
    [Arguments]     ${mice}    ${valor}       
     Should Be Equal As Strings    ${mice}     ${PRECO}
    Should Be Equal As Strings    ${valor}    ${MICE_HP_USB3} 

Fechar navegador
    Close All Browsers