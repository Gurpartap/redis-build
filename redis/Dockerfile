FROM busybox:ubuntu-14.04

ADD ./redis.conf       /etc/redis/redis.conf
ADD ./sentinel.conf    /etc/redis/sentinel.conf
ADD ./redis-cli        /usr/local/bin/redis-cli
ADD ./redis-server     /usr/local/bin/redis-server
ADD ./redis-sentinel   /usr/local/bin/redis-sentinel
ADD ./redis-benchmark  /usr/local/bin/redis-benchmark
ADD ./redis-check-aof  /usr/local/bin/redis-check-aof
ADD ./redis-check-dump /usr/local/bin/redis-check-dump

VOLUME ["/data"]
WORKDIR /data
EXPOSE 6379

CMD ["/usr/local/bin/redis-server", "/etc/redis/redis.conf"]
