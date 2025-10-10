#!/bin/bash

odgi heaps -i input.og \
    -S -n 200 -P -t 20 > output.heaps.tsv
	
echo "done"