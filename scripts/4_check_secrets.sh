#!/bin/bash

echo $(curl --silent --request GET -H "X-Vault-Token: ${1}" http://localhost:8200/v1/secret/data/App1) | jq .
