***Keywords***
Get File Json
    [Arguments]    ${json}

    ${file_json}    Get File    ${EXECDIR}/resources/data/json/${json}
    
    [Return]   ${file_json}

criacao de cpf    
    ${cpf_fake}      FakerLibrary.cpf
    ${cpf_editado}   Remove String   ${cpf_fake}  .
    ${cpf}           Remove String   ${cpf_editado}  - 
    [Return]  ${cpf}