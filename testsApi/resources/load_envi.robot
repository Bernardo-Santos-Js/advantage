*** Settings ***
Library    OperatingSystem
Library    BuiltIn

*** Keywords ***
Carregar Variáveis do .env
    ${output}=    Evaluate
    ...    __import__('dotenv').load_dotenv()
    ...    modules=dotenv
