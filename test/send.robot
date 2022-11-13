*** Settings ***
# robot -d results -i 2 test/
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/send.robot

*** Test Cases ***
Cenário 1: envio de mensagem SMS
  [Tags]  6
  enviar mensagem  SMS

Cenário 2: envio de mensagem email
  [Tags]  7
  enviar mensagem  email 
