#!/bin/bash

singularity exec -B $(pwd):/opt cactus.sif \
cactus-pangenome /opt/js /opt/seq.list --reference REF \
--outDir /opt/out --outName NAME \
--gbz --giraffe --vcf --chrom-vg \
--maxCores 64 --indexCores 32 \
--workDir /opt/tmp --maxDisk 800G