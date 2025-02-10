# docker-HomeLab

## in progress

=======

[![Lint YAML files](https://github.com/preinboth/dockerHomelab/actions/workflows/yamllint.yaml/badge.svg?branch=main)](https://github.com/preinboth/dockerHomelab/actions/workflows/yamllint.yaml)

[![Test Docker Compose](https://github.com/preinboth/dockerHomelab/actions/workflows/docker-test.yml/badge.svg)](https://github.com/preinboth/dockerHomelab/actions/workflows/docker-test.yml)

=======

## Docker Container für dein Homelab

Dieses Repository ist eine Sammlung von Docker-Compose Dateien für Homelab.

## Netzwerk aufsetzen

``` ini
docker compose -f compose-files/common-networks.yml up -d
```
