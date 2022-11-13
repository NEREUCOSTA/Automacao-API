*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Get termo
    ${json}  Get File Json  getTermo.json
    ${cpf}   criacao de cpf
    Set Test Variable  ${cpf}
    ${json_alterado}=    Replace Variables    ${json}
    Log  ${json_alterado}
    ${payload}=    Evaluate    json.loads($json_alterado)    json

    &{header}  Create Dictionary
    ...  Content-Type=application/json
    ...  vrs-correlation-id=qualquerCoisa
    ...  x-api-key=obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30

     ${resp}  POST  url=${url_base}/graphql  json=${payload}  headers=${header}  expected_status=any
    Log    ${resp.status_code}
    Log    ${resp.json()}
    

#Create Cliente Termo   
    