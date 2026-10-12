#!/usr/bin/env bash
set -euo pipefail
IMAGE="devops25-cicd-demo:local"
CONTAINER="devops25-cicd-demo"
docker build -t "$IMAGE" .
docker rm -f "$CONTAINER" >/dev/null 2>&1 || true
docker run -d --name "$CONTAINER" -p 8000:8000 "$IMAGE"
sleep 2
bash scripts/verify.sh
