#!/bin/bash

TOKEN=$1
echo $(curl --silent -H "X-Vault-Token: $TOKEN" http://localhost:8200/v1/sys/policy/) | jq .
