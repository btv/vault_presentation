#!/bin/bash

echo $(curl --silent --request LIST -H "X-Vault-Token: ${1}"\
    http://localhost:8200/v1/secret/metadata/) | jq .
