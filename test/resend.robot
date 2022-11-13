*** Settings ***
# robot -d results -i 2 test/
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/resend.robot

*** Test Cases ***
Cenário 1: reenvio de mensagem SMS
  [Tags]  8
  reenviar mensagem  SMS

Cenário 2: reenvio de mensagem email
  [Tags]  9
  reenviar mensagem  email 