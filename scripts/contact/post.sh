#!/bin/bash


TOKEN=BAhJIiU1NDg5OTc5M2IxMGQ0NDY3OWZhNzExNWIzMzUwNjBhMAY6BkVG--5a5db79dcefc89aac19cfb3640a0e90022945003

curl --include --request POST http://localhost:4741/contacts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "contact_type": "Email",
      "contact_path": "Fake@gmail.com"
    }
  }'
