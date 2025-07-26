#!/bin/bash
# A linha abaixo faz o script parar imediatamente se algum comando falhar.
set -e

ROOT_DIR=$(pwd)/../

source .env

infisical run  \
--token $INFISICAL_TOKEN \
--projectId $INFISICAL_PROJECT_ID \
--env  $INFISICAL_ENV \
--domain $INFISICAL_API_URL \
-- docker compose -f "$ROOT_DIR/docker/docker-compose.yml" up -d

