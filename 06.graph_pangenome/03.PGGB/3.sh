#!/bin/bash

cat *.unaligned.split.vs.ref.paf \
| awk '{print $1,$11,$0}' OFS="\t" \
| sort -k1,1 -k2,2nr \
| awk '$1 != last {print; last=$1}' \
> rescues.paf