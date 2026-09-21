#!/usr/bin/env bash
set -e
echo "Fallo crítico detectado en producción."
echo "Buscando la revisión anterior estable..."
# Simulación de comandos Helm para el examen[cite: 7]
# PREV_TAG=$(helm history miapp --max 2 --output json | jq -r '.[0].revision')
# helm rollback miapp $PREV_TAG --namespace production
echo "Rollback completado exitosamente a la versión anterior."