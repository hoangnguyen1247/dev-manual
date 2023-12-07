#!/bin/bash
set -e

source ./export-env.sh
docker compose -f docker-compose.yml up -d
