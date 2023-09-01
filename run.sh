#!/bin/bash

# Careful: can't create tmp files from this script
cat nginx.conf | sed "s|API_URL|${API_URL}|g" > /etc/nginx/sites-available/default
service nginx start
sleep infinity
