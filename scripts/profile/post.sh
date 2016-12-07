#!/bin/bash


TOKEN=BAhJIiU1ZGFkYTdhOGJkYWE0ZjdjMTA5NWIyMjU2N2Q1ZDY4MQY6BkVG--922838e566340fd8b7b1716e92ba9018835a18e7

curl --include --request POST http://localhost:4741/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "profile": {
      "first_name": "Lynnelle",
      "last_name": "Bennett",
      "about_me": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
  }'
