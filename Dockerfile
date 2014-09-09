FROM dockerfile/redis

ADD ./redis/Dockerfile /tmp/redis-server/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/redis-server /tmp/redis-server
