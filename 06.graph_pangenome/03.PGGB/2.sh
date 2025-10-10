#!/bin/bash

comm -23 <(cut -f1 sample.fa.fai | sort) <(cut -f1 sample.vs.ref.paf | sort) > sample.unaligned.txt

samtools faidx sample.fa $(tr '\n' ' ' < sample.unaligned.txt) > sample.unaligned.fa
samtools faidx sample.unaligned.fa

wfmash -t 56 -m -s 50000 -p 90 ref.fa sample.unaligned.fa > sample.unaligned.split.vs.ref.paf
