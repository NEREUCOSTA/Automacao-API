*** Settings ***
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/user.robot

*** Test Cases ***
Cenário 1: Criar uma usuário
  [Tags]  1
  Criar um usuario
  
 
