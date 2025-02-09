#!/bin/bash
set -e

echo "Erstelle das Netzwerk..."
docker compose -f compose-files/common-networks.yaml up -d

echo "Starte alle Anwendungen..."
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yaml" up -d
done

echo "Alle Container laufen!"
