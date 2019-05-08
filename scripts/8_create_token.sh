#!/bin/bash

POLICY=$(cat <<EOF
{"policies": ["App1"],\
"no_default_policy": true\
}
EOF
)
echo $(curl --silent --request POST --data "${POLICY}" -H "X-Vault-Token: ${1}" http://localhost:8200/v1/auth/token/create) | jq '.'
