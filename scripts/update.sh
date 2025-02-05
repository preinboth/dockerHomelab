#!/bin/bash
set -e

echo "Ziehe neueste Updates..."
git pull

echo "Ziehe neueste Images..."
docker compose -f compose-files/common-networks.yml pull
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yml" pull
done

echo "Starte alles neu..."
for dir in compose-files/applications/*/ ; do
    docker compose -f "$dir/docker-compose.yml" up -d
done
