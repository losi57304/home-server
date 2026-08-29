#!/bin/bash
set -euo pipefail

for stack in "stacks"/*
do
  docker compose -f "$stack/compose.yaml" down
done

clear
echo "❌ Stopped!"
