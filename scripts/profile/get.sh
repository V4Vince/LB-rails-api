#!/bin/bash

TOKEN=BAhJIiU5NWUzMzg0ODI0MTI1NjAyZTE2MDQ0ZmExYzc2OWVkZgY6BkVG--479275e368516fb9c2a2edbf93b9a2ccda91b11e

curl --include --request GET http://localhost:4741/profiles \
  --header "Authorization: Token token=$TOKEN"

ID=3
TOKEN=BAhJIiU5NWUzMzg0ODI0MTI1NjAyZTE2MDQ0ZmExYzc2OWVkZgY6BkVG--479275e368516fb9c2a2edbf93b9a2ccda91b11e

curl --include --request GET http://localhost:4741/profiles/$ID \
  --header "Authorization: Token token=$TOKEN"
