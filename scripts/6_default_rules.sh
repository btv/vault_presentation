#!/bin/bash

echo -e "$(curl --silent -H "X-Vault-Token: ${1}"\
    http://localhost:8200/v1/sys/policy/default/)"
