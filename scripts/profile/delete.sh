#!/bin/bash


TOKEN=BAhJIiU1ZGFkYTdhOGJkYWE0ZjdjMTA5NWIyMjU2N2Q1ZDY4MQY6BkVG--922838e566340fd8b7b1716e92ba9018835a18e7
ID=1

curl --include --request DELETE http://localhost:4741/profiles/$ID \
  --header "Authorization: Token token=$TOKEN"
