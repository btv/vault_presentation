#!/bin/bash

echo $(curl --silent http://localhost:8200/v1/sys/health) | jq .
