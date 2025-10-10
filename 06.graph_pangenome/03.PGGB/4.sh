#!/bin/bash

for chr in {1..18} X Y MT; do
    awk -v c="chr${chr}" '$6==c {print $1}' *.vs.ref.paf rescues.paf \
    | sort > parts/chr${chr}.contigs
done