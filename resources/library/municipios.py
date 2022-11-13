import requests
import json


def listar_municipios(url, codigo_estado):

    payload = json.dumps({
    "query": "query findAllByCodigoEstado($codigoEstado: Int!){ findAllByCodigoEstado(codigoEstado: $codigoEstado) {\n  statusCode \n  municipios{codigoMunicipio, nome}\n}\n}",
    "variables": {
        "codigoEstado": codigo_estado
    }
    })
    headers = {
    'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30',
    'vrs-correlation-id': '891440e6-cbd4-471c-b5f0-87c9a455dc3f',
    'Content-Type': 'application/json'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    return  response.status_code, response.json()