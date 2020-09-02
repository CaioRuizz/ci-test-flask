#!/bin/bash -e

mkdir $DOCKER_CERT_PATH
echo "${{ secrets.CA }}" > $DOCKER_CERT_PATH/ca.pem
echo "${{ secrets.CLIENT_CERT }}" > $DOCKER_CERT_PATH/cert.pem
echo "${{ secrets.CLIENT_KEY }}" > $DOCKER_CERT_PATH/key.pem