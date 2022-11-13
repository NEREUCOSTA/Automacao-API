*** Settings ***
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/municipios.robot

*** Test Cases ***
Cenário 1: lista os municipios
  [Tags]  5
  lista os municipios  41