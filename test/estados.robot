*** Settings ***
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/codigoEstado.robot

*** Test Cases ***
Cenário 1: lista os estados
  [Tags]  8
  lista os estados