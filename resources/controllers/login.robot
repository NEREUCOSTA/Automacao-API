*** Settings ***
Resource   user.robot

*** Keywords ***
Gerar token de acesso
   Criar um usuario
   Sleep   0.5 
   ${resp}  login  ${url_base}/graphql    ${cpf}
   Log    ${resp[0]}
   Log    ${resp[1]}

