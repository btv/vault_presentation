#!/bin/bash

POLICY=$(cat <<EOF
{"policy":
"path \"secret/data/App1\" {\
   capabilities = [\"create\", \"read\", \"update\", \"delete\", \"list\"]\
}\
path \"secret/data/App1/*\" {\
   capabilities = [\"create\", \"read\", \"update\", \"delete\", \"list\"]\
}"\
}
EOF
)
echo $(curl --silent --request POST --data "${POLICY}" -H "X-Vault-Token: ${1}" http://localhost:8200/v1/sys/policy/App1)
