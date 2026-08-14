#!/usr/bin/env bash
set -euo pipefail

git add -A
git commit -m "Archive update $(date -u +%Y-%m-%dT%H:%M:%SZ) (manually)"
git push origin
