
*** Keywords ***
enviar mensagem
    [Arguments]  ${canal}
    ${response}  send  ${url_base}/graphql  ${canal}
    Should Be Equal As Strings   200   ${response[0]}
