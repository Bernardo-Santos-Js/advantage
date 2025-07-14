*** Settings ***
Library    RequestsLibrary
Resource   ../resources/variables.robot
Resource   ../resources/endpoints.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Usuário busca um produto via API
    Carregar Variáveis do .env
    ${BASE_URL}=    Evaluate    __import__('dotenv').get_key('.env', 'BASE_URL')
    Buscar Produto Por Nome    ${BASE_URL}    ${SEARCH_ENDPOINT}    ${SEARCH_TERM}
