#!/bin/bash
# This script should be used when we need to export the .env to check and comparison purposes only.
set -e

ROOT_DIR=$(pwd)/../

source .env

cd $ROOT_DIR

infisical export  \
--token $INFISICAL_TOKEN \
--projectId $INFISICAL_PROJECT_ID \
--env  $INFISICAL_ENV \
--domain $INFISICAL_API_URL \
> .env
