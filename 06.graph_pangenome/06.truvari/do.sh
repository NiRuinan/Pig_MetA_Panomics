#!/bin/bash

truvari bench \
  -b sample.vcf.gz \
  -c sample.multi.SV.filter.vcf.gz \
  --pick multi \
  -r 1000 \
  -C 1000 \
  -O 0.0 \
  -p 0.0 \
  -P 0.3 \
  -s 50 \
  -S 15 \
  --sizemax 100000 \
  -B -1 \
  -o output_dir \
  -f reference_genome.fa \
  --includebed regions.bed

