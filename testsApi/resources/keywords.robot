*** Settings ***
Library    OperatingSystem
Library    BuiltIn
Library    String

*** Keywords ***
Carregar Variáveis do .env
    Evaluate    __import__('dotenv').load_dotenv(".env")

Buscar Produto Por Nome
    [Arguments]    ${base_url}    ${endpoint}    ${search_term}
    Create Session      shop    ${base_url}
    ${response}=        Get Request    shop    ${endpoint}
    Should Be Equal As Strings    ${response.status_code}    200

    ${response_text}=         Convert To String    ${response.text}
    ${response_text_lower}=   Convert To Lower Case    ${response_text}
    Should Contain            ${response_text_lower}    ${search_term.lower()}


Obter Variáveis do Usuário Admin
    ${ADMIN_EMAIL}=       Evaluate    __import__('dotenv').get_key('.env', 'ADMIN_EMAIL')
    ${ADMIN_PASSWORD}=    Evaluate    __import__('dotenv').get_key('.env', 'ADMIN_PASSWORD')
    ${ADMIN_USERNAME}=    Evaluate    __import__('dotenv').get_key('.env', 'ADMIN_USERNAME')
    Set Suite Variable    ${ADMIN_EMAIL}
    Set Suite Variable    ${ADMIN_PASSWORD}
    Set Suite Variable    ${ADMIN_USERNAME}
