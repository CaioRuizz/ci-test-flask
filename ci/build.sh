#!/bin/bash -e
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://52.91.9.91:2376"
export DOCKER_MACHINE_NAME="docker-compose-test"
export DOCKER_CERT_PATH="certs"