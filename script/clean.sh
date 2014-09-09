#!/bin/sh
# Usage: ./clean.sh

docker rm -f redis-build 2> /dev/null
docker rmi -f gurpartap/redis-build
docker rmi -f gurpartap/redis
