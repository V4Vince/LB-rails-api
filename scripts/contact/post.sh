#!/bin/bash


TOKEN=BAhJIiU1ZGFkYTdhOGJkYWE0ZjdjMTA5NWIyMjU2N2Q1ZDY4MQY6BkVG--922838e566340fd8b7b1716e92ba9018835a18e7

curl --include --request POST http://localhost:4741/contacts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "contact_type": "Email",
      "contact_path": "Fake@gmail.com"
    }
  }'

curl --include --request POST http://localhost:4741/contacts \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "contact": {
    "contact_type": "Phone",
    "contact_path": "(978) 999-0000"
  }
}'

curl --include --request POST http://localhost:4741/contacts \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "contact": {
    "contact_type": "Facebook",
    "contact_path": "facebook.com/myfacebook"
  }
}'

curl --include --request POST http://localhost:4741/contacts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "contact_type": "Twitter",
      "contact_path": "twitter.com/me"
    }
  }'
