#!/bin/bash -e

docker-compose build
docker-compose down
docker-compose up -d --force-recreate
rm -rf $DOCKER_CERT_PATH