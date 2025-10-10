#!/bin/bash

for chr in {1..18} X Y; do
    samtools faidx ref.fa ref
    
    for fasta in *.fa; do
        samtools faidx $fasta $(comm -12 <(cut -f1 $fasta.fai | sort) <(sort parts/chr$chr.contigs)) \
        >> parts/chr$chr.pan.fa
    done

    samtools faidx parts/chr$chr.pan.fa
done