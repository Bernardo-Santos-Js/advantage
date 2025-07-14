*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../resources/variables.robot
Resource  ../resources/keyword_upload_imagem.robot

*** Test Cases ***
Upload Imagem Para Produto
    Carregar Variáveis do .env para Upload

    File Should Exist    ${IMAGE_PATH}
    Create Session       shopping    ${BASE_URL}
    &{headers}=           Create Dictionary    Authorization=${TOKEN}
    &{params}=            Create Dictionary    product_id=${PRODUCT_ID}

    ${file}=              Evaluate    open(r'''${IMAGE_PATH}''', 'rb')
    &{files}=             Create Dictionary    file=${file}
    ${response}=          Post Request    shopping    ${ENDPOINT}    headers=${headers}    params=${params}    files=${files}

    Log                   Status code: ${response.status_code}
    Log                   Response body: ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200
