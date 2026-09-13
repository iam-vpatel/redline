#!/usr/bin/env bash
set -euo pipefail
if [ -f requirements.txt ]; then source .venv/bin/activate; pytest tests/ -v; fi
if [ -f package.json ]; then npm test; fi
