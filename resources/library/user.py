import requests
import json


def create_user(url, cpf):
    payload = json.dumps({
    "query": "mutation createUser($username: String!, $password: String!, $email: String!, $nickname: String!, $phone_number: String!){ createUser(username: $username, password: $password, email: $email, nickname: $nickname, phone_number: $phone_number) {\n  statusCode \n  }\n}",
    "variables": {
        "username": cpf,
        "password": "value3",
        "email": "alexandre@gmail.com",
        "nickname": "Gabigol",
        "phone_number": "+5511988560489"
    }
    })
    headers = {
    'Content-Type': 'application/json',
    'vrs-correlation-id': 'qualquerCoisa',
    'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    return  response.status_code, response.json()