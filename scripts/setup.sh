#!/usr/bin/env bash
set -euo pipefail
if [ -f requirements.txt ]; then
  python3 -m venv .venv && source .venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt
elif [ -f package.json ]; then
  npm install
fi
echo "Setup complete."
