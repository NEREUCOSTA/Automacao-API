import requests
import json

def listar_estado(url, codigo_pais):

payload = json.dumps({
  "query": "query($codigoPais : Int!){ findAllEstados(codigoPais : $codigoPais) {\n    statusCode\n    estados{\n        nome\n        codigoPais\n        codigoEstado\n        uf\n    }\n}\n}",
  "variables": {
    "codigoPais": codigo_pais
  }
})
headers = {
  'Content-Type': 'application/json',
  'x-api-key': 'obuqnaTlpvMgroVORS6A91T1yj0Lr6Gt14utmd30',
  'vrs-correlation-id': 'qualquerCoisa'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)


