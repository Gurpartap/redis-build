FROM dockerfile/redis

ADD ./redis/Dockerfile /tmp/redis/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/redis /tmp/redis/
