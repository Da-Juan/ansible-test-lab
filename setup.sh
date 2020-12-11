#!/usr/bin/env bash
cat << EOF > .env
UID=$(id -u)
GID=$(id -g)
EOF
docker-compose build
