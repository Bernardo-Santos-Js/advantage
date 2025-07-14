*** Settings ***
Resource    ../resources/variables.robot
*** Variables ***
${SEARCH_ENDPOINT}    /catalog/api/v1/products/search?name=${SEARCH_TERM}
${LOGIN_ENDPOINT}    /login