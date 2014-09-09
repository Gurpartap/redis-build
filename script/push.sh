#!/bin/sh
# Usage: ./push.sh [TAG]

docker push gurpartap/redis:${1:-latest}
