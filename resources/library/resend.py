import requests
import json

def  resend(url, canal):
    payload = json.dumps({
    "query": "mutation send($canal: String!, $pinId: String) {\n  send(canal: $canal, pinId: $pinId) {\nstatusCode\n     pinId \n}\n}",
    "variables": {
        "canal": canal,
        "pinId": "123456789"
    }
    })
    headers = {
    'Content-Type': 'application/json',
    'vrs-correlation-id': 'qualquerCoisa',
    'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30'
    }

    response = requests.request("POST", url, headers=headers, data=payload)
    return  response.status_code, response.json()