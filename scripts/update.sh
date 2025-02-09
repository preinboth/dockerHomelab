#!/bin/bash
set -e

echo "Ziehe neueste Updates..."
git pull

echo "Ziehe neueste Images..."
docker compose -f compose-files/common-networks.yaml pull
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yml" pull
done

echo "Starte alles neu..."
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yaml" up -d
done
