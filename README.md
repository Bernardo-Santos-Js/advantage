Configurar
- Instalar Python superior a 3.13.1 (Estável) (https://www.python.org/downloads/)
- Configurar Driver do Navegador: 
    Chromedriver (https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br) - Comparar com a versão do navegador instalado
- Executar Comando no terminal: Executar pip install -r requirements.txt (dentro da pasta do projeto na raiz)

- Instalar Robot Framework
    Executar no terminal o comando: pip install robotframework
- Verificar a versão Robot Framework
    Executar no terminal o comando: robot --version    

Para execução normal dos testes (dentro da pasta do projeto na raiz) -SEM TAG
Exemplo: python -m robot -d reports ./testcases/<modulo>/<funcionalidade>

Para execução dos testes com debug -L debug (Detalhes no /reports/log.html)
Exemplo: python -m robot -L debug -d reports ./testcases

Para execução via tags - Exemplo
python -m robot -d reports --include smoke .

Tags atuais no projeto para execução
- Smoke 
- Prioridade

Documentação Selenium Library: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

------------------------------------------------------------------------------------------------
Coberturas dos testes realizados 
Esses cenários foram automatizados conforme documentação enviada por e-mail, através do site: https://advantageonlineshopping.com/#/
 - Cenário: Buscar o produto microfone no AdvantageDemo
 - Cenário: Adicionar o microfone ao carrinho
 - Cenário: Verificar o microfone no carrinho na tela de pagamento

Reports
 - Está sendo usado para envio das CAPTURES PAGE, com data e hora da execução realizada, com isso cada imagem do seu teste possui o nome para facilitar a visulização


Arquio main.robot
 - Neste arquivo estão importadas todas as bibliotecas, recursos e componentes necessários para os testes funcionarem corretamente.

Arquio PageObjects
 - Centralizamos os seletores dos elementos utilizados durante os testes da funcionalidade de consulta de produto. 