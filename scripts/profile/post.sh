#!/bin/bash


TOKEN=BAhJIiU1NDg5OTc5M2IxMGQ0NDY3OWZhNzExNWIzMzUwNjBhMAY6BkVG--5a5db79dcefc89aac19cfb3640a0e90022945003

curl --include --request POST http://localhost:4741/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "profile": {
      "first_name": "John",
      "last_name": "Smith",
      "about_me": "Testing ",
    }
  }'
