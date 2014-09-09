FROM dockerfile/redis:latest

RUN mkdir -p /opt/redis/ && \
    cp /usr/local/bin/redis-* /opt/redis/ && \
    cp /etc/redis/redis.conf /opt/redis/

ADD ./redis/Dockerfile /opt/redis/Dockerfile

CMD docker build --rm --force-rm -t gurpartap/redis /opt/redis/
