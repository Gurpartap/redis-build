FROM dockerfile/redis

RUN mkdir -p /opt/bin && cp /usr/local/bin/redis-* /opt/bin/redis
ADD ./redis/Dockerfile /opt/bin/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/redis /opt/bin/redis/
