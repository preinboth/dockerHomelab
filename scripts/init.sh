#!/bin/bash
set -e

echo "Erstelle das Netzwerk..."
docker compose -f compose-files/common-networks.yml up -d

echo "Starte alle Anwendungen..."
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yml" up -d
done

echo "Alle Container laufen!"
