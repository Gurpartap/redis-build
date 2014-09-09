### Package redis with busybox using Docker

Packages the built binary with [busybox](https://registry.hub.docker.com/_/busybox) base image.

Also serves as an example for docker within docker usage and shipping binaries with a minimal base image (busybox) after compiling in an intermediary image (which, in this case, bases itself on a base image with redis precompiled).

The busybox based redis repo is available at https://registry.hub.docker.com/u/gurpartap/redis.

##### Usage

`docker pull gurpartap/redis`

##### Building and releasing

```bash
$ cat ./script/build.sh
docker build --rm --force-rm -t gurpartap/redis-build .
docker run -v /var/run/docker.sock:/var/run/docker.sock \
           -v $(which docker):/usr/local/bin/docker \
           -ti --name redis-build gurpartap/redis-build
```

```bash
$ cat ./script/push.sh
docker push gurpartap/redis:latest
```

```bash
$ cat ./script/clean.sh
docker rm -f redis-build
docker rmi -f gurpartap/redis-build
docker rmi -f gurpartap/redis
```

```bash
$ ./release.sh # will run them all.
```

If you have any feedback, please [contact me](http://gurpartap.com/).
