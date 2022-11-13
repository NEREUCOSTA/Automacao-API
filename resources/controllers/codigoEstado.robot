
*** Keywords ***
lista os estados
  [Arguments]   ${codigo_pais}
  ${response}  listar estado  ${url_base}/graphql  ${codigo_pais}
  Should Be Equal As Strings   200   ${response[0]}