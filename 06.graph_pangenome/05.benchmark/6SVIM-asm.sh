#!/bin/bash

minimap2 -a -x asm5 --cs -r2k -t 20 ref.fa query.fa > sample.sam
bgzip -@ 20 sample.sam
k8 dipcall-aux.js samflt sample.sam.gz | samtools sort -m4G --threads 20 -o sample.bam -
samtools index -@ 20 sample.bam
svim-asm haploid sample_dir sample.bam ref.fa