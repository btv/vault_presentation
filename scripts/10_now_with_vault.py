#!/usr/bin/env python

from hvac import Client
from sys import argv

client = Client(
    url='http://localhost:8200',
    token=argv[1]
)

data = client.secrets.kv.read_secret_version(path='App1')['data']

OUTPUT ="""
This is just a better example.
HOST : {0},
PASSWORD: {1},
USER: {2}"""

print(
    OUTPUT.format(
        data['data']['db.host'],
        data['data']['db.password'],
        data['data']['db.username']
    )
)
