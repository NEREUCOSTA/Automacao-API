
*** Keywords ***
lista os municipios
  [Arguments]   ${codigo_estado}
  ${response}  Listar Municipios  ${url_base}/graphql  ${codigo_estado}
  Should Be Equal As Strings   200   ${response[0]}