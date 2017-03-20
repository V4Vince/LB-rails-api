#!/bin/bash

TOKEN=BAhJIiU2NWIyNWVhZmM0ZGJjNTY0MzdlZjMyYzZmMzdiYjg5NgY6BkVG--435a4c65d26f499d80d9cb31b5b1e23299618b33

curl --include --request POST http://localhost:4741/videos \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "video": {
      "title": "First post",
      "video_link": "https://www.youtube.com/watch?v=sIQ4ng0e1GU",
      "description": "testing post on video"
    }
  }'
