#!/bin/bash

#Start redis server on 22122
redis-server --appendonly yes  --port 22122 &

src/dynomite --conf-file=conf/redis_single.yml -v11
