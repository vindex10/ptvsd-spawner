#!/bin/bash

trap 'exit' SIGINT
trap 'exit' SIGTERM

while :; do
    echo "listening" >> /opt/log
    nc -l -p 3050 -c './spawn-or-exit.sh; tee -a /opt/log | nc -w1 127.0.0.1 3075 | tee'
    echo "" >> /opt/log
    if pkill -9 -f ptvsd; then
        echo "server killed on disconnect" >> /opt/log
    fi;
    echo "closed" >> /opt/log
done;
