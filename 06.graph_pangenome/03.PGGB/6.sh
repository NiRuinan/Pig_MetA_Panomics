#!/bin/bash

for chr in {1..18} X Y; do
    pggb -i parts/chr${chr}.pan.fa -o chr${chr}.pan \
        -t 48 -p 98 -s 100000 -n 90 -k 311 -O 0.03 -T 48 \
        -v -V "Duroc" -Z
    echo "chr${chr} done!"
done