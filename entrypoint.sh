#!/bin/bash
# Replace the placeholder in index.html with the environment variable value
envsubst '$WELCOME_MSG' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Start NGINX
nginx -g "daemon off;"
