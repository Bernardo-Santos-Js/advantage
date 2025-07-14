*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   ../resources/variables.robot
Resource   ../resources/endpoints.robot
Resource   ../resources/headers.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Login Usuário ADMIN Existente
    Carregar Variáveis do .env
    ${BASE_URL}=    Evaluate    __import__('dotenv').get_key('.env', 'BASE_URL')
    Obter Variáveis do Usuário Admin

    Create Session    advantage    ${BASE_URL}/accountservice/accountrest/api/v1    headers=${JSON_HEADERS}    verify=False

    ${body}=    Create Dictionary
    ...    email=${ADMIN_EMAIL}
    ...    loginPassword=${ADMIN_PASSWORD}
    ...    loginUser=${ADMIN_USERNAME}

    ${response}=    POST On Session    advantage    ${LOGIN_ENDPOINT}    json=${body}    expected_status=any
    Log    ${response.status_code}
    Log    ${response.text}
