#!/bin/bash
set -euo pipefail

for stack in "stacks"/*
do
  docker compose -f "$stack/compose.yaml" up -d
done

clear
echo "✅ Started!"
