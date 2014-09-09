FROM busybox

ADD /usr/local/bin/redis-cli        /usr/local/bin/redis-cli
ADD /usr/local/bin/redis-server     /usr/local/bin/redis-server
ADD /usr/local/bin/redis-sentinel   /usr/local/bin/redis-sentinel
ADD /usr/local/bin/redis-benchmark  /usr/local/bin/redis-benchmark
ADD /usr/local/bin/redis-check-aof  /usr/local/bin/redis-check-aof
ADD /usr/local/bin/redis-check-dump /usr/local/bin/redis-check-dump

VOLUME ["/data"]
WORKDIR /data
EXPOSE 6379

CMD ["/redis-server", "/etc/redis/redis.conf"]
