#!/bin/bash

cd $VH_OUTPUTS_DIR
touch .uploaded
while :; do
  test -f .done && exit
  sleep 10
  for f in *; do
    grep -q "$f" .uploaded && continue
    curl -s -F file=@"$f" http://k.moonq.org:8080/ && echo $f >> .uploaded
  done
done

