import requests
import json

def  send(url, canal):
    payload = json.dumps({
    "query": "mutation send($canal: String!, $chave: String!) {\n  send(canal: $canal, chave: $chave) {\nstatusCode\n     pinId \n}\n}",
    "variables": {
        "canal": canal,
        "chave": "123456789"
    }
    })
    headers = {
    'Content-Type': 'application/json',
    'vrs-correlation-id': 'qualquerCoisa',
    'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    return  response.status_code, response.json()