#!/usr/bin/env bash
set -e
# Restaura la revisión anterior estable[cite: 7]
PREV_TAG=$(helm history miapp --max 2 --output json | jq -r '.[0].revision')
helm rollback miapp $PREV_TAG --namespace production
echo "Rollback completado exitosamente."