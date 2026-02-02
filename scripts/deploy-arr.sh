#!/usr/bin/env bash
set -euo pipefail

ROOT="/opt/media-arr"
STACK="$ROOT/stacks/arr"

cd "$ROOT"
git pull

cd "$STACK"
docker compose -f docker-compose.yml up -d
