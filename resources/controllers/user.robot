
*** Keywords ***
Criar um usuario
    ${cpf}   criacao de cpf
    Set Test Variable  ${cpf}
    ${resp}    create user    ${url_base}/graphql    ${cpf}

    Validar Status Code    201    ${resp[1]}[data][createUser][statusCode]