#!/bin/bash

cd $VH_OUTPUTS_DIR
seq 5 | while read f; do
   sleep 10
   date > foo$f
done

