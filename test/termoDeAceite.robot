*** Settings ***
# robot -d results -i 2 test/
Resource    ${EXECDIR}/env.robot
Resource    ${EXECDIR}/resources/controllers/termoDeAceite.robot

*** Test Cases ***
Cenário 1: Get termo
  [Tags]  3 
  Get termo

Cenário 2: Create Cliente Termo
   [Tags]  4 
    Create Cliente Termo  