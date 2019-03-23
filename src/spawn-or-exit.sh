#!/bin/bash

if ps aux | grep "[p]tvsd"; then
    echo "ptvsd exists. no spawn" >> /opt/log
    exit 0;
else
    echo "spawning" >> /opt/log
    nohup python3 -m ptvsd --host 127.0.0.1 --port 3075 --wait main.py 1>>/opt/log 2>>/opt/log &
    sleep 1
    echo "spawned" >> /opt/log
fi;
