#!/bin/sh

from=$(dirname $0)

cmd="python3 $from/../hangupsbot.py --retries 99 --config $from/../config/config.json --memory $from/../config/memory.json"

if [ "$1" == "--daemon" ] ; then
  cmd="nohup $cmd &"
fi

$cmd

