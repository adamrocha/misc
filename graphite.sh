#!/usr/bin/env bash
# Docker test script

for i in {1..100}; do
  if [ $i -eq 100 ]; then
    break
  else (echo "foo.bar $i $(date +%s)" |nc localhost 2003)
    sleep 10
  fi
done
