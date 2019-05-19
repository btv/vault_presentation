#!/bin/bash

DATA="{\"data\":\
    {\"db.host\":\"localhost\",\
    \"db.username\":\"root\",\
    \"db.password\":\"password\"}}"
echo $(curl --silent --request POST --data "${DATA}"\
       -H "X-Vault-Token: ${1}"\
       http://localhost:8200/v1/secret/data/App1) | jq .
