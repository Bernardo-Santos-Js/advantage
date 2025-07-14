*** Settings ***
Library    BuiltIn
Library    OperatingSystem

*** Keywords ***
Carregar Variáveis do .env para Upload
    ${BASE_URL}=      Evaluate    __import__('dotenv').get_key('.env', 'BASE_URL')
    ${ENDPOINT}=      Evaluate    __import__('dotenv').get_key('.env', 'ENDPOINT')
    ${TOKEN}=         Evaluate    __import__('dotenv').get_key('.env', 'AUTH_TOKEN')
    ${IMAGE_PATH}=    Evaluate    __import__('dotenv').get_key('.env', 'IMAGE_PATH')
    ${PRODUCT_ID}=    Evaluate    __import__('dotenv').get_key('.env', 'PRODUCT_ID')

    Set Suite Variable    ${BASE_URL}
    Set Suite Variable    ${ENDPOINT}
    Set Suite Variable    ${TOKEN}
    Set Suite Variable    ${IMAGE_PATH}
    Set Suite Variable    ${PRODUCT_ID}
