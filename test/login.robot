*** Settings ***
# robot -d results -i 2 test/
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/login.robot

*** Test Cases ***
Cenário 1: Gerar um token de acesso
  [Tags]  2
  Gerar token de acesso