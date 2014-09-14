#!/bin/sh
# Usage: ./clean.sh

docker rm -f redis-build 2> /dev/null
docker rmi -f gurpartap/redis-build 2> /dev/null
docker rmi -f gurpartap/redis 2> /dev/null
