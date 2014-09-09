### Package redis with [busybox:ubuntu-14.04](https://registry.hub.docker.com/_/busybox) using Docker

Results in a 18.56MB image, 5.6MB of which is busybox. This is the smallest redis image available and it is extremely useful for serving in docker based examples. 5.6MB of this is used by the busybox:ubuntu-14.04 base image.

The ubuntu flavour offers the necessary dependencies (libc) and the portability of binaries for redis to run. The packaged redis binaries are from [dockerfiles/redis:latest](https://registry.hub.docker.com/u/dockerfiles/redis/), which is based on ubuntu.

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
