import requests
import json

def login(url, username):
    payload = json.dumps({
    "query": "mutation login($username: String!, $password: String!) {\n  login(username: $username, password: $password) {\n     AccessToken \n     ExpiresIn \n     TokenType \n     RefreshToken \n     IdToken\n  }\n}",
    "variables": {
        "username": username,
        "password": "value3"
    }
    })
    headers = {
    'Content-Type': 'application/json',
    'vrs-correlation-id': 'qualquerCoisa',
    'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    return  response.status_code, response.json()
