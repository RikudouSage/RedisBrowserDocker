#!/bin/sh

if [ -z "$REDIS_HOST" ]
then
  echo "Please set the redis host"
  exit 1
fi

if [ -z "$REDIS_PORT" ]
then
  REDIS_PORT=6379
fi

if [ -z "$REDIS_DB" ]
then
  REDIS_DB=0
fi

COMMAND="redis-browser -h $REDIS_HOST -p $REDIS_PORT -n $REDIS_DB -B 0.0.0.0"

if [ ! -z "$REDIS_PASSWORD" ]
then
  COMMAND="$COMMAND -a $REDIS_PASSWORD"
fi

exec $COMMAND
