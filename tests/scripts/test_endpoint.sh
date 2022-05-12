#!/usr/bin/env bash

echo -n "starting "

for i in {1..1000}; do
  echo -n "$i| "
  curl -f http://127.0.0.1:8000/sqlite &>> /tmp/ibis-async.log
done
