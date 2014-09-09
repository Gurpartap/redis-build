#!/bin/sh
# Usage: ./build.sh

docker build --rm --force-rm -t gurpartap/redis-build .
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
                -v $(which docker):/usr/local/bin/docker \
                -ti --name redis-build gurpartap/redis-build
