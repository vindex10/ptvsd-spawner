#!/bin/bash
LOG=/opt/log
echo "** container started **" > $LOG

./pipe.sh &

tail -f $LOG
