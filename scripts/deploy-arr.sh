#!/usr/bin/env bash
set -euo pipefail

ROOT="/opt/media-arr"
STACK="$ROOT/stacks/arr"
COMPOSE="$STACK/docker-compose.yml"

cd "$ROOT"
git pull

cd "$STACK"
docker compose -f "$COMPOSE" pull
docker compose -f "$COMPOSE" up -d

docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}"
