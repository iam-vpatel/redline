#!/usr/bin/env bash
set -euo pipefail
if [ -f requirements.txt ]; then source .venv/bin/activate; ruff check .; fi
if [ -f package.json ]; then npm run lint --if-present; fi
