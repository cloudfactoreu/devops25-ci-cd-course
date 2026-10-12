#!/usr/bin/env bash
set -euo pipefail
URL="${1:-http://127.0.0.1:8000/health}"
echo "Verifying $URL"
python - <<PY
import urllib.request, json
url = "$URL"
with urllib.request.urlopen(url, timeout=5) as r:
    data = json.loads(r.read().decode())
if data.get("status") != "ok":
    raise SystemExit("Health check failed")
print("Health check OK")
PY
