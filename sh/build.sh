#!/bin/sh
docker-compose build && docker-compose up -d
docker-compose exec wordpress bash -c 'cd /var/www/html; ./sh/core-install.sh'
