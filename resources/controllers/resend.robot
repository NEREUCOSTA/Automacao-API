
*** Keywords ***
reenviar mensagem
    [Arguments]  ${canal}
    ${response}  resend  ${url_base}/graphql  ${canal}
    Should Be Equal As Strings   200   ${response[0]}