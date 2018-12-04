#!/bin/bash
# *************************************
# * (C) Fabian Salamanca 2018
# *************************************
# * This script helps with the user
# * creation via REST API
# * See README.md
# * Usage: ./create.sh
# *************************************

curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance1", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance2", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance3", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance4", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance5", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance6", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance7", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance8", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
curl -XPOST -H 'Content-Type: application/json' -d '{"username": "maintenance9", "passwd": "nosecret", "role": "maintenance"}' http://localhost:3000/user
